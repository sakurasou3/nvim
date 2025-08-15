return {
  "neovim/nvim-lspconfig",
  keys = {
    { "K", vim.lsp.buf.hover, {} },
    { "gd", vim.lsp.buf.definition, {} },
    { "gD", vim.lsp.buf.declaration, {} },
  },
}
