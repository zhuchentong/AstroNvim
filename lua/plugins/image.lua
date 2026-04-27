return {
  "3rd/image.nvim",
  opts = function()
    local opts = {}
    if vim.env.TERM:match "^foot" then opts.backend = "sixel" end
    return opts
  end,
}
