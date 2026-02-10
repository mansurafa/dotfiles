return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        transparent = false,
        imInactive = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
      })
      vim.cmd("colorscheme kanagawa")
    end,
  },
}
