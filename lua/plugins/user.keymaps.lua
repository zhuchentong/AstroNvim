---@type LazySpec
return {
  "AstroNvim/astrocore", -- AstroCore 核心插件，用于配置全局快捷键映射
  opts = {
    mappings = {
      -- Normal 模式快捷键
      n = {
        -- 向下移动5行
        ["J"] = { "5j", desc = "Move down 5 lines" },
        -- 向上移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" },
        -- 移动到行首（非空白字符）
        ["H"] = { "^", desc = "Move to line start" },
        -- 移动到行末
        ["L"] = { "$", desc = "Move to line end" },
        -- 切换到上一个缓冲区
        ["{"] = { "<Cmd>bprevious<CR>", desc = "Previous buffer" },
        -- 切换到下一个缓冲区
        ["}"] = { "<Cmd>bnext<CR>", desc = "Next buffer" },
        -- 跳转到下一个诊断信息
        ["<F8>"] = { "<Cmd>DiagnosticJumpNext<CR>", desc = "Next diagnostic" },
        -- 跳转到上一个诊断信息
        ["<S-F8>"] = { "<Cmd>DiagnosticJumpPrev<CR>", desc = "Previous diagnostic" },
        -- 触发 LSP 代码操作（快速修复、重构等）
        ["<C-m>"] = { function() vim.lsp.buf.code_action() end, desc = "Code Action" },
      },
      -- Visual/Select 模式快捷键
      v = {
        -- 向下移动5行
        ["J"] = { "5j", desc = "Move down 5 lines" },
        -- 向上移动5行
        ["K"] = { "5k", desc = "Move up 5 lines" },
        -- 移动到行首（非空白字符）
        ["H"] = { "^", desc = "Move to line start" },
        -- 移动到行末
        ["L"] = { "$", desc = "Move to line end" },
        -- 将选中行合并为一行
        ["<Leader>j"] = { "J", desc = "Join lines" },
      },
      -- Operator-Pending 模式快捷键（配合 d/y/c 等操作符使用）
      o = {
        -- 向下移动5行（如 dJ 删除向下5行）
        ["J"] = { "5j", desc = "Move down 5 lines" },
        -- 向上移动5行（如 dK 删除向上5行）
        ["K"] = { "5k", desc = "Move up 5 lines" },
        -- 移动到行首（如 dH 删除到行首）
        ["H"] = { "^", desc = "Move to line start" },
        -- 移动到行末（如 dL 删除到行尾）
        ["L"] = { "$", desc = "Move to line end" },
      },
      -- Insert 模式（暂无自定义快捷键）
      i = {},
      -- Terminal 模式（快捷键已移至 toggleterm.lua）
      t = {},
    },
  },
}
