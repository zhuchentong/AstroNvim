-- conform.nvim 格式化器登记
-- 插件本体与 format_on_save / default_format_opts(lsp_format="fallback") / :Format / 键位
-- 均由 astrocommunity 的 editing-support.conform-nvim 包提供（见 lua/community.lua）。
-- 此文件只追加 formatters_by_ft：lazy 会与各规格 deep-merge。
--
-- 说明：
--   - Lua 的 stylua 映射由 astrocommunity.pack.lua 内置的 conform 规格自动激活，无需在此重复。
--   - 下列均为对 oxfmt 0.78.0 / 0.79.0 实测确认支持的类型（含 Vue SFC 的 template/script/style、
--     Markdown 内嵌代码块、html、scss/less、jsonc）。
--   - svelte 故意不映射：oxfmt 实测不支持 .svelte（原样返回），留给 lsp_format="fallback"
--     回退给 svelte_ls 处理。
--   - toml / json5 / graphql 默认不映射：toml 会重排 Cargo.toml 等属产品决策；json5/graphql
--     需先确认 Neovim 会把扩展名设成对应 filetype，否则映射静默失效。需要时按下方注释开启。
---@type LazySpec
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      json = { "oxfmt" },
      jsonc = { "oxfmt" },
      css = { "oxfmt" },
      scss = { "oxfmt" },
      less = { "oxfmt" },
      html = { "oxfmt" },
      vue = { "oxfmt" },
      markdown = { "oxfmt" },
      yaml = { "oxfmt" },
      -- toml = { "oxfmt" },
      -- json5 = { "oxfmt" },
      -- graphql = { "oxfmt" },
    },
  },
}
