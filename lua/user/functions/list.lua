-- 列表工具函数
local M = {}

--- 检查列表中是否包含指定值
---@param list any[] 待检查的列表
---@param value any 待查找的值
---@return boolean 若包含则返回 true
function M.contains(list, value)
  for _, v in ipairs(list) do
    if v == value then
      return true
    end
  end
  return false
end

return M
