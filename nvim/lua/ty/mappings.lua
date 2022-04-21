local M = {}


function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

M.map('n', '<leader>n', '<cmd>noh<CR>') -- clear highlights
M.map('n', '<leader>q', '<cmd>bd<CR>') -- clear highlights

M.map('n', '<c-p>', '<cmd>Telescope find_files<cr>')
M.map("n", "<Leader>r", "<cmd>Telescope live_grep<cr>")
M.map("n", "<Leader>b", "<cmd>Telescope buffers<cr>")
M.map("n", "<Leader>e", "<cmd>Telescope file_browser<cr>")

M.map("n", "<c-l>", "<cmd>bnext<cr>")
M.map("n", "<c-h>", "<cmd>bprevious<cr>")

M.map("n", "<f10>", "<cmd>Neotree toggle<cr>")

M.map("n", "k", "gk")
M.map("n", "j", "gj")
M.map("n", "0", "g0")
M.map("n", "$", "g$")
return M
