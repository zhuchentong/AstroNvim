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
        ["{"] = { "<Cmd>bprevious<CR>", desc = "Previous buffer" }, -- 上一个缓冲区
        ["}"] = { "<Cmd>bnext<CR>", desc = "Next buffer" }, -- 下一个缓冲区
        ["<F8>"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" }, -- 下一个诊断
        ["<S-F8>"] = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" }, -- 上一个诊断
        ["<C-m>"] = { function() vim.lsp.buf.code_action() end, desc = "Code Action" }, -- 代码操作
        ["<C-A-m>"] = { "<Cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document Diagnostics" }, -- 当前文件诊断列表
      },
      v = {
        ["J"] = { "5j", desc = "Move down 5 lines" }, -- 向下移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" }, -- 向上移动5行
        ["H"] = { "^", desc = "Move to line start" }, -- 移动到行首
        ["L"] = { "$", desc = "Move to line end" }, -- 移动到行末
        ["<Leader>j"] = { "J", desc = "Join lines" }, -- 合并为一行
      },
      i = {},
      t = {
        ["<C-q>"] = { "<Cmd>ToggleTerm float<CR>", desc = "Close float terminal" }, -- 隐藏终端
      },
    },
  },
}
