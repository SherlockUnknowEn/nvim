-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Lua 脚本
function echoDisabled(key)
    vim.cmd(string.format([[echo "%s is disabled"]], key))
end

-- 普通模式下的键映射
vim.api.nvim_set_keymap('n', 'L', 'g_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'dL', 'dG_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '0', '^', { noremap = true, silent = true })

-- 可视模式下的键映射
vim.api.nvim_set_keymap('v', 'L', 'g_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'dL', 'dG_', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '0', '^', { noremap = true, silent = true })

-- 禁用某些按键
vim.api.nvim_set_keymap('n', 'H', ':lua echoDisabled("H")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', ':lua echoDisabled("J")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'U', ':lua echoDisabled("U")<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'P', ':lua echoDisabled("P")<CR>', { noremap = true, silent = true })

