-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "x" }, "<leader>bf", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

vim.keymap.set("n", "<C-M-h>", ":vertical resize -2<CR>", { desc = "Resize window left (-2)" })
vim.keymap.set("n", "<C-M-l>", ":vertical resize +2<CR>", { desc = "Resize window right (+2)" })
vim.keymap.set("n", "<C-M-k>", ":resize -2<CR>", { desc = "Resize window up (-2)" })
vim.keymap.set("n", "<C-M-j>", ":resize +2<CR>", { desc = "Resize window down (+2)" })

vim.keymap.set("n", "\\", ":Ex<CR>", { desc = "Open netrw (Ex)" })
