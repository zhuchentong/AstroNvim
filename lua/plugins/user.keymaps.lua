---@type LazySpec
return {
  "AstroNvim/astrocore", -- AstroCore 核心插件，用于配置全局快捷键映射
  opts = {
    mappings = {
      n = { -- Normal 模式快捷键
        ["J"] = { "5j", desc = "Move down 5 lines" }, -- 向下移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" }, -- 向上移动5行
        ["H"] = { "^", desc = "Move to line start" }, -- 移动到行首（非空白字符）
        ["L"] = { "$", desc = "Move to line end" }, -- 移动到行末
        ["{"] = { "<Cmd>bprevious<CR>", desc = "Previous buffer" }, -- 切换到上一个缓冲区
        ["}"] = { "<Cmd>bnext<CR>", desc = "Next buffer" }, -- 切换到下一个缓冲区
        ["<F8>"] = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" }, -- 跳转到下一个诊断信息
        ["<S-F8>"] = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" }, -- 跳转到上一个诊断信息
        ["<C-m>"] = { function() vim.lsp.buf.code_action() end, desc = "Code Action" }, -- 触发 LSP 代码操作（快速修复、重构等）
      },
      v = { -- Visual/Select 模式快捷键
        ["J"] = { "5j", desc = "Move down 5 lines" }, -- 向下移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" }, -- 向上移动5行
        ["H"] = { "^", desc = "Move to line start" }, -- 移动到行首（非空白字符）
        ["L"] = { "$", desc = "Move to line end" }, -- 移动到行末
        ["<Leader>j"] = { "J", desc = "Join lines" }, -- 将选中行合并为一行
      },
      i = {}, -- Insert 模式（暂无自定义快捷键）
      t = {}, -- Terminal 模式（快捷键已移至 toggleterm.lua）
    },
  },
}
