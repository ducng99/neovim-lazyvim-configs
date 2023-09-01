return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
  {
    "Mofiqul/vscode.nvim",
    opts = {
      transparent = true,
    }
  },
  {
    "bufferline.nvim",
    opts = {
      highlights = {
        background = {
          bg = { attribute = "bg", highlight = "None" },
        },
        separator = {
          bg = { attribute = "bg", highlight = "None" },
        },
        close_button = {
          bg = { attribute = "bg", highlight = "None" },
        },
      },
    }
  },
  {
    "mini.indentscope",
    enabled = false,
  },
  {
    "indent-blankline.nvim",
    opts = {
      show_current_context = true,
    }
  },
  {
    "nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "persistence.nvim",
    enabled = false,
  },
  {
    "goolord/alpha-nvim",
    enabled = false,
  },
  {
    "tokyonight.nvim",
    enabled = false,
  },
  {
    "catppuccin",
    enabled = false
  },
  {
    "dstein64/vim-startuptime",
    enabled = false
  },
  {
    "noice.nvim",
    enabled = false
  },
  -- {
  --   "nui.nvim",
  --   enabled = false,
  -- },
  {
    "nvim-navic",
    enabled = false,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      fade_in_slide_out = "static"
    }
  }
}
