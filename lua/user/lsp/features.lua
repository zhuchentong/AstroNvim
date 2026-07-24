-- LSP 功能开关
-- 注意: inlay_hints=true 覆盖了 AstroNvim 默认值 false
return {
  codelens = true, -- 启用代码镜头（CodeLens）
  inlay_hints = true, -- 启用内联提示（覆盖 AstroNvim 默认值 false）
  semantic_tokens = true, -- 启用语义令牌高亮
}
