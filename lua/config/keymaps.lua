-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Lua 脚本
function echoDisabled(key)
    vim.cmd(string.format([[echo "%s is disabled"]], key))
end

-- 函数：移动到行尾（除了换行符）
function move_to_end()
  local line = vim.api.nvim_get_current_line()
  local col = #line - 1
  vim.api.nvim_win_set_cursor(0, {vim.api.nvim_win_get_cursor(0)[1], col})
end

-- 在 normal 模式下映射 L 键
vim.api.nvim_set_keymap('n', '-', [[:lua move_to_end()<CR>]], {noremap = true, silent = true})

-- 在 visual 模式下映射 L 键
vim.api.nvim_set_keymap('v', '-', [[:lua move_to_end()<CR>]], {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '0', '^', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '0', '^', { noremap = true, silent = true })

-- 禁用某些按键
vim.api.nvim_set_keymap('n', 'H', ':lua echoDisabled("H")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', ':lua echoDisabled("J")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'U', ':lua echoDisabled("U")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'P', ':lua echoDisabled("P")<CR>', { noremap = true, silent = true })



