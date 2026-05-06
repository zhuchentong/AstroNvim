---@type LazySpec
return {
  "AstroNvim/astrolsp",
  opts = {
    config = {
      eslint = {
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
    },
    on_attach = function(client, bufnr)
      if client.name == "eslint" then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          command = "EslintFixAll",
        })
      end
    end,
  },
}
