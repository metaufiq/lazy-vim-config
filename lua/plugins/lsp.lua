-- local keyset = vim.keymap.set

-- keyset("i", "<c-s>", ":lua vim.lsp.buf.hover()")

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
    enabled = true,
    opts = {
      performance = {
        debounce = 0,
        throttle = 0,
        fetching_timeout = 500,
        confirm_resolve_timeout = 80,
        async_budget = 1,
        max_view_entries = 200,
      },
    },
  },
}
