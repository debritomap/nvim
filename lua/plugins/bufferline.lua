return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    config = function()
      require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          always_show_bufferline = true,
          show_close_icon = false,
          show_buffer_close_icons = false,
          separator_style = "slant",
          -- Mostra um “offset” bonitinho quando o NvimTree está aberto à esquerda
          offsets = {
            { filetype = "NvimTree", text = "Explorer", text_align = "left", separator = true },
          },
        },
      })
      -- Navegação entre “tabs”
      vim.keymap.set("n", "<S-l>", ":BufferLineCycleNext<CR>", { desc = "Próximo buffer" })
      vim.keymap.set("n", "<S-h>", ":BufferLineCyclePrev<CR>", { desc = "Buffer anterior" })
      -- Fechar buffer atual
      vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Fechar buffer" })
    end,
  },
}
