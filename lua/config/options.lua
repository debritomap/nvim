-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options
-- set cursor to the same of iterm

-- ~/.config/nvim/lua/config/options.lua
-- Use API Lua nativa (mais seguro que vim.cmd("set ..."))
local opt = vim.opt

-- Cursor: vazio mantém o mesmo do terminal/iTerm (sem mudar por modo)
opt.guicursor = ""

-- Numeração de linhas
opt.number = true
opt.relativenumber = false

-- Conceal desativado e sem ocultar no cursor
opt.conceallevel = 0
opt.concealcursor = ""

-- tab key to space setup
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
