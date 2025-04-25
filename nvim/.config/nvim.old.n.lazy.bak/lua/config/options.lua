-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options hereby

local opt = vim.opt -- for conciseness

-- Tabs & Indentation
opt.autoindent = false
opt.expandtab = false
opt.softtabstop = 4
opt.tabstop = 4
opt.shiftwidth = 4

opt.cursorline = true
opt.cursorcolumn = true

opt.winbar = "%=%m %f "
