return {
  -- typescript
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "axelvc/template-string.nvim",
    opts = {
      setup = {},
    },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    opts = {
      setup = {
        render = "background",
        enable_named_colors = true,
        enable_tailwind = true,
      },
    },
  },
}
