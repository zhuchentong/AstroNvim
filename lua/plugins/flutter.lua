-- flutter-tools.nvim 扩展配置
-- dart community pack 已引入本插件并配置 lsp/debugger，此处仅追加 widget_guides。
return {
  {
    "akinsho/flutter-tools.nvim",
    opts = {
      widget_guides = {
        enabled = true,
      },
    },
  },
}
