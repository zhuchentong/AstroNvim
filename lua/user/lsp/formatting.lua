-- 代码格式化配置
-- 格式化已统一交给 conform.nvim（见 lua/plugins/conform.lua 与 community.lua 的 conform-nvim 包），
-- 此处关闭 astrolsp 的 LSP 格式化路径，避免与 conform 双重格式化 / 键位冲突。
return {
  format_on_save = {
    enabled = false, -- 关闭保存时的 LSP 自动格式化（autoformat_enabled 返回 false）
  },
  -- 关键：disabled=true 会让 lsp_auto_format 保存 autocmd、<Leader>lf/uf/uF 键、:Format 命令的
  -- 注册条件 formatting_enabled 全部为假（其只读 formatting.disabled，不看 format_on_save.enabled），
  -- 从而把这些入口干净地让给 conform；且与 conform-nvim 包设定的 disabled=true 取值一致。
  disabled = true,
  timeout_ms = 1000,
}
