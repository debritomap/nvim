return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 12, -- altura do terminal horizontal
        direction = "horizontal", -- terminal embaixo
        open_mapping = [[<c-\>]], -- abre/fecha com Ctrl+\ (igual VSCode-like)
        shade_terminals = true,
      })
      -- ESC sai do modo terminal para NORMAL
      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Sair do modo terminal" })
      -- Atalho extra para abrir/fechar
      vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { desc = "Terminal" })
    end,
  },
}
