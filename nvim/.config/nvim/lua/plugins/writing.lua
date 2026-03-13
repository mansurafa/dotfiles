return {
  -- ZEN MODE: Centraliza e limita a largura do texto
  {
    "folke/zen-mode.nvim",
    opts = {
      window = { width = 85 },
      plugins = {
        options = { enabled = true, number = true },
        kitty = { enabled = true, font = "+2" },
      },
    },
    init = function()
      if vim.env.NVIM_WRITER then
        vim.api.nvim_create_autocmd("VimEnter", {
          callback = function()
            vim.cmd("ZenMode")
          end,
        })
      end
    end,
  },

  -- RENDER MARKDOWN: Deixa o visual limpo
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = { anti_conceal = { enabled = false } },
  },

  -- IMAGE.NVIM: Renderiza as imagens dentro do Kitty
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty",
      max_height_window_percentage = 40, -- Não deixa a imagem ocupar a tela toda
      window_overlap_clear_enabled = true,
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = { "markdown", "vimwiki" },
        },
      },
    },
  },

  -- IMG-CLIP: O "Ctrl+V" de imagens (Essencial para produtividade)
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      default = {
        dir_path = "assets", -- Salva as imagens automaticamente numa pasta assets
        prompt_for_file_name = false, -- Mais rápido, ele gera um nome aleatório
        use_absolute_path = false,
      },
    },
    keys = {
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Colar Imagem do Clipboard" },
    },
  },
}
