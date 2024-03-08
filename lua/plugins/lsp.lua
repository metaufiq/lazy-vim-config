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
  },
}
