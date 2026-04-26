-- ToggleTerm：终端管理插件，支持浮动、水平、垂直等多种终端布局
return {
  -- 通过 AstroCore 注册快捷键，保持统一管理
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        t = { -- Terminal 模式快捷键
          ["<C-q>"] = { "<Cmd>ToggleTerm float<CR>", desc = "Close float terminal" }, -- 隐藏浮动终端窗口
        },
      },
    },
  },
}
