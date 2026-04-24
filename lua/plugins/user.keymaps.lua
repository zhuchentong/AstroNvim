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
