-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<leader>o", "<Cmd>Neotree source=filesystem focus<CR>", { desc = "change focus to Neotree" })
vim.keymap.set("n", "<leader>O", "<Cmd>Neotree source=filesystem unfocus<CR>", { desc = "changefocus to Neotree" })
vim.keymap.set("v", "<C-x>", '"+d')
