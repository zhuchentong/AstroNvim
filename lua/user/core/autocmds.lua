-- 自动命令配置
return {
  -- 仅在打开 dashboard 欢迎页时自动打开 neo-tree 文件浏览器
  auto_open_neotree = {
    {
      event = "User",
      pattern = "SnacksDashboardOpened",
      desc = "Auto open neo-tree on dashboard",
      callback = function()
        if vim.g.vscode then return end
        vim.schedule(function() vim.cmd "Neotree show" end)
      end,
    },
  },
}
