return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd("colorscheme catppuccin-mocha")
    end,
    set_light_mode = function()
      vim.cmd("colorscheme catppuccin-frappe")
    end,
  },
}

