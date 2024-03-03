-- return {}

return {
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    enabled = false
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin", 
    priority = 1000,
    opts = {
      color_overrides = {
        all = {},
        latte = {
        },
        frappe = {
          text = "#FFFFFF",
          blue = "#6fd184",
        },
        macchiato = {},
        mocha = {},
      },
      transparent_background = true,
    }
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
}