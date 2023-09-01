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
        fill = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        background = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "None" },
        },
        buffer_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        buffer_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        separator = {
          fg = { attribute = "bg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "None" },
        },
        separator_selected = {
          fg = { attribute = "fg", highlight = "Special" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        separator_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "StatusLineNC" },
        },
        close_button = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "None" },
        },
        close_button_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        close_button_visible = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
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
}
