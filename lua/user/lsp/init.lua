-- AstroLSP 用户配置聚合模块
-- 由 plugins/astrolsp.lua 通过 opts = require "user.lsp" 引入
-- 对应插件: AstroNvim/astrolsp
return {
  features = require "user.lsp.features", -- LSP 功能开关
  formatting = require "user.lsp.formatting", -- 格式化配置
  servers = require "user.lsp.servers", -- 需启用的语言服务器列表
  config = require "user.lsp.config", -- 语言服务器详细配置
  autocmds = require "user.lsp.autocmds", -- LSP 相关自动命令
  mappings = require "user.lsp.mappings", -- LSP 相关快捷键
  on_attach = require "user.lsp.on_attach", -- LSP attach 回调函数
}
