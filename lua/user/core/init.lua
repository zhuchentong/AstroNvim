-- AstroCore 用户配置聚合模块
-- 由 plugins/astrocore.lua 通过 opts = require "user.core" 引入
-- 对应插件: AstroNvim/astrocore
return {
  options = require "user.core.options", -- vim 选项配置 (vim.opt / vim.g)
  mappings = require "user.core.keymaps", -- 快捷键映射
  autocmds = require "user.core.autocmds", -- 自动命令
  treesitter = require "user.core.treesitter", -- Treesitter 配置
}
