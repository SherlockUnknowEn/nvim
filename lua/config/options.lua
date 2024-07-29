-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置tab为4个空格
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = ""
vim.g.autoformat = false

vim.diagnostic.config({
  virtual_text = false,  -- 不显示虚拟文本
  signs = true,  -- 保留符号显示
  underline = true,  -- 保留下划线
  update_in_insert = false,  -- 不在插入模式下更新诊断
  float = { border = "rounded" }  -- 设置浮动窗口边框
})

