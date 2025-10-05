return {
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", dependencies = { "williamboman/mason.nvim" }, config = true },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lsp = require("lspconfig")

      -- Servidores básicos (ajuste à sua stack)
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              workspace = { checkThirdParty = false },
              diagnostics = { globals = { "vim" } },
              telemetry = { enable = false },
            },
          },
        },
        tsserver = {},
        html = {},
        cssls = {},
        jsonls = {},
        -- ruby_lsp = {},  -- ative se usar Ruby
        -- tailwindcss = {}, -- ative se usar Tailwind
      }

      for name, opts in pairs(servers) do
        lsp[name].setup(opts)
      end

      -- Keymaps LSP úteis
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }
      map("n", "gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
      map("n", "gr", vim.lsp.buf.references, { desc = "LSP: References" })
      map("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover" })
      map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: Rename" })
      map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code Action" })
      map("n", "<leader>f", function()
        vim.lsp.buf.format({ async = true })
      end, { desc = "Format buffer" })
    end,
  },
}
