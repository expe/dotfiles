-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.wrap = true
opt.scrolloff = 10
opt.shortmess:append({ W = true, I = true, c = true, s = true })
opt.completeopt = { "menu", "menuone", "noselect", "noinsert" }
vim.g.snacks_animate = false
