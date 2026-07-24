-- LSP 相关快捷键映射
return {
  n = {
    -- 跳转到声明（仅在服务器支持 textDocument/declaration 时生效）
    gD = {
      function() vim.lsp.buf.declaration() end,
      desc = "Declaration of current symbol",
      cond = "textDocument/declaration",
    },
    -- 跳转到定义（按位置去重，消除 vue_ls / vtsls 双挂产生的重复条目）
    gd = {
      function()
        vim.lsp.buf.definition {
          on_list = function(ctx)
            local seen, dedup = {}, {}
            for _, it in ipairs(ctx.items) do
              local key = string.format("%s:%d:%d", it.filename, it.lnum, it.col)
              if not seen[key] then seen[key] = true; dedup[#dedup + 1] = it end
            end
            if #dedup == 1 then
              -- 单条：复用 Neovim 内置跳转（含 jumplist/tagstack/zv），不弹选择
              vim.fn.setqflist({}, " ", { title = ctx.title, items = dedup })
              vim.cmd "cfirst"
              vim.cmd "cclose"
            else
              -- 多条（确实不同）：交给 ui.select（snacks 接管成浮窗）
              vim.ui.select(dedup, {
                prompt = "Definitions",
                format_item = function(it)
                  return string.format("%s:%d:%d", vim.fn.fnamemodify(it.filename, ":~:."), it.lnum, it.col)
                end,
              }, function(it)
                if it then
                  vim.fn.setqflist({}, " ", { items = { it } })
                  vim.cmd "cfirst"
                  vim.cmd "cclose"
                end
              end)
            end
          end,
        }
      end,
      desc = "Goto Definition (deduped)",
      cond = "textDocument/definition",
    },
    -- 切换语义令牌高亮（缓冲区级别）
    ["<Leader>uY"] = {
      function() require("astrolsp.toggles").buffer_semantic_tokens() end,
      desc = "Toggle LSP semantic highlight (buffer)",
      cond = function(client)
        return client:supports_method "textDocument/semanticTokens/full" and vim.lsp.semantic_tokens ~= nil
      end,
    },
  },
}
