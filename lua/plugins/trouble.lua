-- Trouble：结构化诊断信息面板，提供问题、警告、错误一览视图
return {
  -- Trouble 插件配置（由 astrocommunity.diagnostics.trouble-nvim 引入）
  {
    "folke/trouble.nvim",
    opts = {},
  },
  -- 通过 AstroCore 注册快捷键，保持统一管理
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<C-A-m>"] = { "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document Diagnostics" }, -- 打开当前文件诊断列表（Trouble 面板）
        },
      },
    },
  },
}
