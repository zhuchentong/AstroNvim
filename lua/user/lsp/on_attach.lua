-- LSP attach 回调函数
-- 在语言服务器附加到缓冲区时执行
return function(client, bufnr)
  -- 为 ESLint 服务器注册保存时自动修复
  if client.name == "eslint" then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end
end
