---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    autocmds = {
      -- 仅在打开 dashboard 欢迎页时自动打开 neo-tree 文件浏览器
      auto_open_neotree = {
        {
          -- 监听 snacks dashboard 的 Opened 事件
          event = "User",
          pattern = "SnacksDashboardOpened",
          desc = "Auto open neo-tree on dashboard",
          callback = function()
            vim.schedule(function()
              vim.cmd "Neotree show"
            end)
          end,
        },
      },
    },
  },
}
