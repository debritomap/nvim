-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Open as an IDE by defaults
local group = vim.api.nvim_create_augroup("ide_layout_on_start", { clear = true })
vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  callback = function()
    -- Só monta se estiver em um diretório (sem arquivo específico na linha de comando)
    if vim.fn.argc() == 0 then
      pcall(function()
        require("config.layout").setup_ide()
      end)
    end
  end,
})
