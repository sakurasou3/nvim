return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "cspell",
        "css-lsp",
        "cssmodules-language-server",
        "curlylint",
        "flake8",
        "djlint",
        "isort",
        "pylint",
        "html-lsp",
        "htmlbeautifier",
        "htmlhint",
        "prettier",
        "prettierd",
        "stylelint",
        "stylelint-lsp",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        emmet_ls = {
          filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "css",
            "sass",
            "scss",
            "less",
            "javascript",
            "typescript",
            "markdown",
          },
        },
      },
    },
  },
}
