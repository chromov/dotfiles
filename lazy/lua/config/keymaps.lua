-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<LeftRelease>", '"*ygv', { desc = "auto copy mouse selection" })
vim.keymap.set("v", "<2-LeftRelease>", '"*ygv', { desc = "auto copy mouse selection" })
vim.keymap.set("n", "<C-b>", "<cmd> Telescope buffers sort_mru=true <CR>", { desc = "find buffers" })
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy all" })
vim.keymap.set(
  "v",
  "<leader>be",
  ":<c-u>lua require('b64').encode()<CR>",
  { desc = "Base64 encode", silent = true, remap = false }
)
vim.keymap.set(
  "v",
  "<leader>bd",
  ":<c-u>lua require('b64').decode()<CR>",
  { desc = "Base64 decode", silent = true, remap = false }
)
