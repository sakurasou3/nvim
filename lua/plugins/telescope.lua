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
            initial_mode = "normal",
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
        desc = "Telescope: [F]ind [P]lugin File",
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
        desc = "Telescope: [F]ind All [F]iles",
      },
      {
        "<leader>fg",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Telescope: [F]ile Live [G]rep",
      },
      {
        ";h",
        function()
          require("telescope.builtin").help_tags()
        end,
        desc = "Telescope: [H]elp Tag",
      },
      {
        ";e",
        function()
          require("telescope.builtin").diagnostics()
        end,
        desc = "Telescope: [E]rror diagnostics",
      },
      {
        ";r",
        function()
          require("telescope.builtin").lsp_references({
            initial_mode = "normal",
          })
        end,
        desc = "Telescoep: LSP [R]eferences",
      },
      {
        ";d",
        function()
          require("telescope.builtin").lsp_definitions()
        end,
        desc = "Telescoep: LSP [D]efinitions",
      },
      {
        "<leader>gs",
        function()
          require("telescope.builtin").git_status({
            prompt_title = "",
          })
        end,
        desc = "Telescoep: [G]it [S]tatus",
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
