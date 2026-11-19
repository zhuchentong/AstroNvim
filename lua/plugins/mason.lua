return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "debugpy",
        "tree-sitter-cli",
        "oxfmt", -- conform 的 oxfmt 格式化器在「无项目本地 node_modules/.bin/oxfmt」时的 PATH 回退
      },
    },
  },
}
