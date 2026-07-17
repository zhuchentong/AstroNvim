return {
  "moonbit-community/moonbit.nvim",
  opts = function(_, opts)
    opts.lsp = {} -- 强制启用 LSP；插件会自动检测并使用 moon-lsp --stdio
  end,
}
