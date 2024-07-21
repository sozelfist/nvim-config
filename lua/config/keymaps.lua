-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Map jj to exit insert mode
keymap.set("i", "jj", "<Esc>", opts)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Switch between nvim windows
vim.keymap.set("n", "<tab>", "<C-w>w", { noremap = true, silent = true })
