return {
  { "rebelot/kanagawa.nvim" },
  config = function()
    require("kanagawa").setup({
      compile = true,
    })
    vim.cmd("colorsheme kanagawa")
  end,
  build = function()
    vim.cmd("KanagawaCompile")
  end,
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}
