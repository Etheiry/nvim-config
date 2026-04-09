local opts = {noremap=true, silent=true}

vim.g.mapleader = ' '

local keymap = vim.keymap
-- Keymaps
-- visual mode: allows highlight move like vs code
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- normal mode: better J actions
keymap.set("n", "J", "mzJ`z")

-- Keeps current copy when pasting over other text.
keymap.set("x", "<leader>p", "\"_dP")

-- vertical split window
keymap.set("n", "<C-W>", "<CMD>vsplit<CR>")

keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Paste without replacing clipboard content
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "p", '"_dp', opts)
