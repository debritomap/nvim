-- ~/.config/nvim/init.lua
-- bootstrap lazy.nvim, LazyVim and your plugins

-- Setting up my leader key
vim.g.mapleader = " " -- leader = espaço
vim.g.maplocalleader = "\\" -- opcional: localleader = barra invertida
require("config.lazy")
