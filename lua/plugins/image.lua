return {
  "3rd/image.nvim",
  opts = function()
    local opts = {}

    -- 设置图像渲染后端
    if ({ "foot", "foot-extra" })[vim.env.TERM] then opts.backend = "sixel" end

    return opts
  end,
}
