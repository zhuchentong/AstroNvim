local M = {}

--- keymaps 相关函数
M.keymaps = {}

M.list = {}

function M.list.contains(list, value)
    for _, v in ipairs(list) do
        if v == value then
            return true
        end
    end
    return false
end

return M
