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

-- vim.keymap.set("n", "<Space>e", ":Ex<CR>", { desc = "Open netrw (Ex)" })

-- vim.keymap.set("n", "\\", function()
--   local prev = vim.g.netrw_liststyle
--   vim.g.netrw_liststyle = 1 -- long listing (not tree)
--   vim.cmd("Explore %:p:h")
--   vim.g.netrw_liststyle = prev
-- end, { desc = "Explore (non-tree)" })

vim.keymap.set("n", "\\", function()
  local bufnr = vim.api.nvim_get_current_buf()
  local bufname = vim.api.nvim_buf_get_name(bufnr)
  local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")

  if filetype == "netrw" then
    -- If netrw is open and focused, close it
    vim.cmd("bdelete")
  else
    -- Save previous netrw style
    local prev = vim.g.netrw_liststyle or 0
    vim.g.netrw_liststyle = 1 -- long listing, not tree
    vim.cmd("Explore %:p:h") -- open netrw in current file's directory
    vim.g.netrw_liststyle = prev
  end
end, { desc = "Explore (non-tree)" })
