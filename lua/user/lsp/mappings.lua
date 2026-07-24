-- LSP 相关快捷键映射
return {
  n = {
    -- 跳转到声明（仅在服务器支持 textDocument/declaration 时生效）
    gD = {
      function() vim.lsp.buf.declaration() end,
      desc = "Declaration of current symbol",
      cond = "textDocument/declaration",
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
