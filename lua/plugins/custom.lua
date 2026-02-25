return {

  { "Mofiqul/vscode.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  {
    "folke/noice.nvim",
    config = {
      cmdline = {
        view = "cmdline", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false, -- Disables virtual text
      },
    },
  },

  {
    "folke/which-key.nvim",
    opts = {

      preset = "modern",
      delay = 1000,
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = true,
        auto_open = false,
        replace_netrw = false,
      },
    },
  },

  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          auto_show = false,
        },
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
