-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Ativa configurações de escrita automaticamente em Markdown
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true -- Quebra de linha suave
    vim.opt_local.spell = true -- Ativa corretor ortográfico
    vim.opt_local.spelllang = "pt_br" -- Define português
    vim.opt_local.conceallevel = 2 -- Esconde sintaxe markdown (links, bold)

    -- Opcional: Abre o ZenMode automaticamente se abrir via alias 'notas'
    if vim.env.NVIM_MODE == "WRITER" then
      vim.cmd("ZenMode")
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "text", "gitcommit" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.breakindent = true
  end,
})
