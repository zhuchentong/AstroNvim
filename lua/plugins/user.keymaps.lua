---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["J"] = { "5j", desc = "Move down 5 lines" }, -- 向下移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" }, -- 向上移动5行
        ["H"] = { "^", desc = "Move to line start" }, -- 移动到行首
        ["L"] = { "$", desc = "Move to line end" }, -- 移动到行末
        ["<F8>"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
        ["<S-F8>"] = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" },
        ["<C-m>"] = { function() vim.lsp.buf.code_action() end, desc = "Code Action" },
        ["<C-A-m>"] = { "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document Diagnostics" },
      },
      v = {
        ["J"] = { "5j", desc = "Move down 5 lines" }, -- 向下移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" }, -- 向上移动5行
        ["H"] = { "^", desc = "Move to line start" }, -- 移动到行首
        ["L"] = { "$", desc = "Move to line end" }, -- 移动到行末
        ["<Leader>j"] = { "J", desc = "Join lines" }, -- 合并为一行
      },
      i = {},
      t = {},
    },
  },
}
