-- LSP 相关自动命令
return {
  -- 在离开插入模式或进入缓冲区时刷新 CodeLens
  -- 仅当语言服务器支持 textDocument/codeLens 时生效
  lsp_codelens_refresh = {
    cond = "textDocument/codeLens",
    {
      event = { "InsertLeave", "BufEnter" },
      desc = "Refresh codelens (buffer)",
      callback = function(args)
        if require("astrolsp").config.features.codelens then vim.lsp.codelens.enable(true, { bufnr = args.buf }) end
      end,
    },
  },
}
