-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jj", "<esc>")

keymap.set("n", "ss", "^")
keymap.set("n", ";;", "$")
keymap.set("n", "<c-a>", "gg<S-v>G")

keymap.set("n", "<leader>w", ":w<enter>")
keymap.set("n", "<leader>q", ":q<enter>")
keymap.set("n", "<leader>wq", ":wq<enter>")

keymap.set("v", "<tab>", "<s-i><tab><esc>")
keymap.set("v", "<s-tab>", "<s-i><s-tab><esc>")

-- buffer
keymap.set("n", "<tab>", ":bnext<return>")
keymap.set("n", "<s-tab>", ":bprev<return>")

-- typescript-tool
keymap.set("n", "<leader>a", "<cmd>TSToolsAddMissingImports<enter>")
keymap.set("n", "<leader>r", "<cmd>TSToolsRenameFile<enter>")
keymap.set("n", "<leader>fa", "<cmd>TSToolsFixAll<enter>")
