-- Treesitter 配置
-- 注意: highlight / indent / auto_install 均为 AstroNvim 默认值，此处显式声明供未来自定义
-- ensure_installed 通过 opts_extend 机制追加到 AstroNvim 默认列表
return {
  highlight = true, -- 启用 Treesitter 语法高亮
  indent = true, -- 启用 Treesitter 缩进
  auto_install = true, -- 自动安装缺失的语言解析器
  ensure_installed = { "lua", "vim" }, -- 确保安装的解析器（追加到默认列表）
}
