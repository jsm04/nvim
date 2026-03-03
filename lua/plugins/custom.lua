return {

  { "Mofiqul/vscode.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  {
    "tjdevries/colorbuddy.nvim",
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

      preset = "clasic", -- modern or helix available too
      delay = 1000,
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

  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    keys = {
      { "<leader>fe", false },
      { "<leader>fE", false },
      { "<leader>E", false },
      { "<leader>e", false },
    },
  },

  { "nvim-mini/mini.icons", enabled = false },

  {
    "adelarsq/vim-emoji-icon-theme",
    dependencies = { "kyazdani42/nvim-web-devicons" },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options.icons_enabled = false

      -- Optional: ensure no symbol sections inject icons
      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }

      return opts
    end,
  },
}
