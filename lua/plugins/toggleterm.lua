-- ToggleTerm：终端管理插件，支持浮动、水平、垂直等多种终端布局
return {
  -- ToggleTerm 插件配置
  {
    "akinsho/toggleterm.nvim",
    opts = {
      -- 浮动终端窗口样式
      float_opts = {
        -- 圆角边框
        border = "rounded",
        -- 轻微透明
        winblend = 15,
      },
    },
  },
  -- 通过 AstroCore 注册快捷键，保持统一管理
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        -- Terminal 模式快捷键
        t = {
          -- 隐藏浮动终端窗口
          ["<C-q>"] = { "<Cmd>ToggleTerm float<CR>", desc = "Close float terminal" },
        },
      },
    },
  },
}
