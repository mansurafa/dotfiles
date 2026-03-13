if vim.env.NVIM_WRITER then
  vim.opt.number = false -- Remove números de linha
  vim.opt.relativenumber = false -- Remove números relativos
  vim.opt.wrap = true -- Ativa quebra de linha
  vim.opt.linebreak = true -- Não quebra palavras ao meio
  vim.opt.laststatus = 0 -- Esconde a barra de status (opcional, para limpeza total)
  vim.opt.spell = true -- Ativa corretor
  vim.opt.spelllang = "pt_br" -- Português
end
