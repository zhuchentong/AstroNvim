return {
  "3rd/image.nvim",
  opts = function()
    local opts = {}
    if vim.env.TERM == "foot" then
      opts.backend = "sixel"
    end
    return opts
  end,
}
