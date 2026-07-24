-- 语言服务器详细配置
-- 传递给 vim.lsp.config，按服务器名称分组
return {
  -- ESLint 语言服务器配置
  eslint = {
    -- ESLint 生效的文件类型
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
      "vue",
      "html",
      "markdown",
      "json",
      "jsonc",
      "yaml",
      "toml",
      "xml",
      "gql",
      "graphql",
      "astro",
      "svelte",
      "css",
      "less",
      "scss",
      "pcss",
      "postcss",
    },
    settings = {
      -- 关闭所有格式化相关规则的诊断（交给 Prettier 等格式化工具处理）
      rulesCustomizations = {
        { rule = "style/*", severity = "off", fixable = true },
        { rule = "format/*", severity = "off", fixable = true },
        { rule = "*-indent", severity = "off", fixable = true },
        { rule = "*-spacing", severity = "off", fixable = true },
        { rule = "*-spaces", severity = "off", fixable = true },
        { rule = "*-order", severity = "off", fixable = true },
        { rule = "*-dangle", severity = "off", fixable = true },
        { rule = "*-newline", severity = "off", fixable = true },
        { rule = "*quotes", severity = "off", fixable = true },
        { rule = "*semi", severity = "off", fixable = true },
      },
    },
  },
}
