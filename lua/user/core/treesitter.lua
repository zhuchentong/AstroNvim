-- Treesitter 配置
-- highlight / indent 为 AstroNvim 默认值，此处不重复声明
-- auto_install 非默认（默认关闭），此处显式开启
-- ensure_installed 通过 opts_extend 机制追加到 AstroNvim 默认列表
return {
  auto_install = true, -- 自动安装缺失的语言解析器
  ensure_installed = { "lua", "vim" }, -- 确保安装的解析器（追加到默认列表）
}
