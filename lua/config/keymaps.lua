-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Explore files
map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Abrir o explorador de arquivos" })

-- Build layout IDE
map("n", "<leader>ui", function()
  require("config.layout").setup_ide()
end, { desc = "Layout IDE (Explorer + Tabs + Terminal)" })
