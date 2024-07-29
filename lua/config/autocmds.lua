-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- 全局变量保存浮动窗口的句柄
diagnostic_float_win = nil

-- 显示浮动诊断窗口
function show_diagnostics()
  diagnostic_float_win = vim.diagnostic.open_float(nil, { focus=false })
end

-- 关闭浮动诊断窗口
function close_diagnostics()
  if diagnostic_float_win and vim.api.nvim_win_is_valid(diagnostic_float_win) then
    vim.api.nvim_win_close(diagnostic_float_win, true)
    diagnostic_float_win = nil
  end
end

-- 创建自动命令来显示和隐藏浮动诊断窗口
vim.cmd [[
  augroup DiagnosticHover
    autocmd!
    autocmd CursorHold * lua show_diagnostics()
    autocmd CursorMoved * lua close_diagnostics()
  augroup END
]]

