-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.title = true
vim.g.gruvbox_material_show_eob = 0
vim.g.gruvbox_material_colors_override = {
  bg_dim = { "#222222", "235" },
}
vim.g.matchup_matchparen_offscreen = { method = "popup" }
vim.wo.relativenumber = false
