-- Helper: monta layout tipo IDE
local M = {}

function M.setup_ide()
  -- Abre explorador à esquerda
  vim.cmd("NvimTreeOpen")

  -- Garante uma janela de edição selecionada (à direita)
  -- Se só existe o NvimTree aberto, cria um buffer vazio do lado
  local only_tree = (vim.bo.filetype == "NvimTree") and (vim.fn.winnr("$") == 1)
  if only_tree then
    vim.cmd("vnew") -- split vertical para a direita
  end

  -- Abre terminal horizontal embaixo (se já houver, alterna)
  if package.loaded["toggleterm.terminal"] then
    vim.cmd("ToggleTerm direction=horizontal size=12")
  else
    -- fallback: terminal nativo
    vim.cmd("belowright 12split | terminal")
  end

  -- Foco de volta no editor (não no terminal)
  vim.cmd("wincmd k")

  -- Opcional: mostra a tabline sempre (bufferline já cuida, mas ajuda)
  vim.o.showtabline = 2
end

return M
