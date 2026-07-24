-- 代码格式化配置
return {
  format_on_save = {
    enabled = true, -- 保存时自动格式化
    allow_filetypes = {}, -- 仅对指定文件类型启用（空 = 全部）
    ignore_filetypes = {}, -- 忽略的文件类型
  },
  disabled = {}, -- 禁用格式化的语言服务器名称列表
  timeout_ms = 1000, -- 格式化超时时间（毫秒）
}
