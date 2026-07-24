-- 快捷键映射配置
-- 注意: ]b / [b 等默认映射已由 AstroNvim 提供，此处仅添加自定义映射
return {
  n = { -- Normal 模式
    -- 光标移动增强
    ["J"] = { "5j", desc = "向下移动 5 行" },
    ["K"] = { "5k", desc = "向上移动 5 行" },
    ["H"] = { "^", desc = "移动到行首（非空白字符）" },
    ["L"] = { "$", desc = "移动到行末" },
    -- 缓冲区切换
    ["{"] = { "<Cmd>bprevious<CR>", desc = "上一个缓冲区" },
    ["}"] = { "<Cmd>bnext<CR>", desc = "下一个缓冲区" },
    -- 诊断信息跳转
    ["<F8>"] = { "<Cmd>DiagnosticJumpNext<CR>", desc = "下一个诊断信息" },
    ["<S-F8>"] = { "<Cmd>DiagnosticJumpPrev<CR>", desc = "上一个诊断信息" },
    -- LSP 代码操作：使用 AstroNvim 内置 gra / <Leader>la（均带 cond 守卫）
    -- 注意：<C-m> 与 <CR> 在终端为同一字节(0x0D)，映射它会劫持回车键，故移除
    -- 通过 tabline 选择并关闭缓冲区
    ["<Leader>bd"] = {
      function()
        require("astroui.status.heirline").buffer_picker(
          function(bufnr) require("astrocore.buffer").close(bufnr) end
        )
      end,
      desc = "从 tabline 关闭缓冲区",
    },
  },
  v = { -- Visual/Select 模式
    -- 光标移动增强（与 Normal 模式一致）
    ["J"] = { "5j", desc = "向下移动 5 行" },
    ["K"] = { "5k", desc = "向上移动 5 行" },
    ["H"] = { "^", desc = "移动到行首（非空白字符）" },
    ["L"] = { "$", desc = "移动到行末" },
    -- 合并选中行
    ["<Leader>j"] = { "J", desc = "合并选中行" },
  },
  o = { -- Operator-Pending 模式（配合 d/y/c 等操作符使用）
    -- 光标移动增强（如 dJ 删除向下 5 行）
    ["J"] = { "5j", desc = "向下移动 5 行" },
    ["K"] = { "5k", desc = "向上移动 5 行" },
    ["H"] = { "^", desc = "移动到行首（非空白字符）" },
    ["L"] = { "$", desc = "移动到行末" },
  },
  i = {}, -- Insert 模式（暂无自定义）
  t = {}, -- Terminal 模式（快捷键已移至 toggleterm.lua）
}
