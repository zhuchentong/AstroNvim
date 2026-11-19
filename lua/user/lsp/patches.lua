-- 针对上游 Neovim 缺陷的运行期补丁
-- Workaround: neovim#40838 —— LSP 对未加载 buffer 推送带过期 lnum 的诊断后，
-- 重新打开该文件时 underline handler 以未 clamp 的 lnum 调 nvim_buf_get_lines，
-- 在 diagnostic.lua:1845 抛出 E565 (Index out of bounds)。修复 #40839 仅合入
-- master、0.12.5 未 backport；上游修复进入 stable 后删除本文件。
-- 未加载 buffer 的诊断必然过期，直接丢弃无副作用：文件打开后 didOpen 会触发重新推送。
local orig_set = vim.diagnostic.set
vim.diagnostic.set = function(namespace, bufnr, diagnostics, opts)
  if vim.api.nvim_buf_is_valid(bufnr) and not vim.api.nvim_buf_is_loaded(bufnr) then return end
  return orig_set(namespace, bufnr, diagnostics, opts)
end
