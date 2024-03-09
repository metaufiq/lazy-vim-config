-- return {}
-- Detect and handle SIGBERT TSServer crashes

return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {
        all = {},
        latte = {},
        frappe = {
          text = "#FFFFFF",
          blue = "#6fd184",
        },
        macchiato = {},
        mocha = {},
      },
      transparent_background = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-latte",
    },
  },
}
