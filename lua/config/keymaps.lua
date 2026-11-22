-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Keluar dari insert mode lebih cepat
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-- Salin path file ke clipboard
map("n", "<leader>fy", function()
  vim.fn.setreg("+", vim.fn.expand("%:."))
  vim.notify("Copied: " .. vim.fn.expand("%:."))
end, { desc = "Copy relative path" })

map("n", "<leader>fY", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  vim.notify("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy absolute path" })
