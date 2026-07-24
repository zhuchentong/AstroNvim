-- 用户工具函数聚合模块
-- 使用方式: local F = require "user.functions"
-- F.list.contains({1, 2, 3}, 2) --> true
return {
  list = require "user.functions.list", -- 列表工具函数
  keymaps = require "user.functions.keymaps", -- 快捷键工具函数
}
