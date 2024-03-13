vim.g.codeium_disable_bindings = 1

vim.keymap.set("i", "<c-a>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

return {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}
