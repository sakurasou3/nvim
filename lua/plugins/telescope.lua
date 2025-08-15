return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local fb_actions = require("telescope").extensions.file_browser.actions

      telescope.setup({
        extensions = {
          pickers = {
            git_status = true,
          },
          file_browser = {
            theme = "dropdown",
            initial_mode = "normal",
            layout_config = {
              preview_cutoff = 9999,
            },
            mappings = {
              ["n"] = {
                ["N"] = fb_actions.create,
              },
            },
          },
        },
      })
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      {
        "<leader>fP",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Telescope: Find Plugin File",
      },
      {
        "<leader>ff",
        function()
          local builtin = require("telescope.builtin")
          builtin.find_files({
            no_ignore = true,
            hidden = true,
          })
        end,
        desc = "Telescope: Find All Files",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Telescope: Live Grep",
      },
      {
        ";t",
        function()
          require("telescope.builtin").help_tags()
        end,
      },
      {
        ";e",
        function()
          require("telescope.builtin").diagnostics()
        end,
      },
      {
        ";c",
        function()
          require("telescope.builtin").lsp_references()
        end,
        desc = "Telescoep: LSP references",
      },
      {
        ";d",
        function()
          require("telescope.builtin").lsp_definitions()
        end,
        desc = "Telescoep: LSP definitions",
      },
      {
        "<leader>gs",
        function()
          require("telescope.builtin").git_status({
            prompt_title = "",
          })
        end,
        desc = "Telescoep: git status",
      },
      {
        "<leader>sf",
        function()
          local telescope = require("telescope")
          telescope.extensions.file_browser.file_browser({
            path = "%:p:h",
            hidden = true,
            respect_gitignore = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
          })
        end,
        desc = "Telescope: File Brouser",
      },
    },
  },
}
