-- LSP attach 回调函数
-- 在语言服务器附加到缓冲区时执行
return function(client, bufnr)
  -- 为 ESLint 服务器注册保存时自动修复
  if client.name == "eslint" then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        client:request_sync("workspace/executeCommand", {
          command = "eslint.applyAllFixes",
          arguments = {
            {
              uri = vim.uri_from_bufnr(bufnr),
              version = vim.lsp.util.buf_versions[bufnr],
            },
          },
        }, nil, bufnr)
      end,
    })
  elseif client.name == "oxlint" then
    -- 为 Oxlint 服务器注册保存时自动修复（oxc.fixAll）
    -- 与 eslint 分支并存无冲突：两者按项目二选一，同一 buffer 不会同时 attach。
    -- 修复力度由 user/lsp/config.lua 的 oxlint.settings.fixKind 控制。
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        client:request_sync("workspace/executeCommand", {
          command = "oxc.fixAll",
          arguments = {
            {
              uri = vim.uri_from_bufnr(bufnr),
            },
          },
        }, nil, bufnr)
      end,
    })
  end
end
