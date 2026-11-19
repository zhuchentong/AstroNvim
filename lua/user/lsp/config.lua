-- 语言服务器详细配置
-- 传递给 vim.lsp.config，按服务器名称分组
return {
  -- Oxlint 语言服务器配置
  -- 基础配置（cmd=oxlint --lsp / filetypes / root_dir / :LspOxlintFixAll 命令）
  -- 来自 nvim-lspconfig 的 lsp/oxlint.lua，此处仅按需覆盖 settings。
  oxlint = {
    settings = {
      -- fix-on-save 力度：eslint 的 applyAllFixes 会修所有可修项，
      -- 这里用 safe_fix_or_suggestion 对齐（含建议，但不含可能改行为的危险修复）。
      -- 可选值：safe_fix | safe_fix_or_suggestion | dangerous_fix |
      --        dangerous_fix_or_suggestion | none | all
      fixKind = "safe_fix_or_suggestion",
      -- typeAware = true, -- 需项目安装 tsgolint/tsrs 后按需开启
    },
  },
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
