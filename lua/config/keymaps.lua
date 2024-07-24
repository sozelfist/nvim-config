-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Map jj to exit insert mode
keymap.set("i", "jj", "<Esc>", opts)

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d', opts)

-- Switch between nvim windows
keymap.set("n", "<tab>", "<C-w>w", opts)

-- Increment/decrement
keymap.set("n", "-", "<C-x>")
keymap.set("n", "+", "<C-a>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", "<C-w>s", opts)
keymap.set("n", "sv", "<C-w>v", opts)

-- Move windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Quit window
keymap.set("n", "sq", "<C-w>q")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
