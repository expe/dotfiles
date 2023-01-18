-- local M = {}
-- function M.map(mode, lhs, rhs, opts)
--   local options = {noremap = true}
--   if opts then options = vim.tbl_extend('force', options, opts) end
--   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
-- end

local M = {}

M.imap = function(tbl)
  vim.keymap.set("i", tbl[1], tbl[2], tbl[3])
end

M.nmap = function(tbl)
  vim.keymap.set("n", tbl[1], tbl[2], tbl[3])
end


M.nmap { "<leader>n", "<cmd>noh<CR>" }
M.nmap { "<leader>q", "<cmd>bd<CR>" }

M.nmap { "<c-p>", "<cmd>Telescope find_files<cr>" }
M.nmap { "<Leader>r", "<cmd>Telescope live_grep<cr>" }
M.nmap { "<Leader>b", "<cmd>Telescope buffers<cr>" }
M.nmap { "<Leader>e", "<cmd>Telescope file_browser<cr>" }
M.nmap { "<Leader>l", "<cmd>Telescope quickfix<cr>" }
M.nmap { "<space>dl", "<cmd>Telescope diagnostics<cr>" }

M.nmap { "<c-l>", "<cmd>bnext<cr>" }
M.nmap { "<c-h>", "<cmd>bprevious<cr>" }
M.nmap { "<Leader><Right>", "<cmd>BufferLineMoveNext<cr>" }
M.nmap { "<Leader><Left>", "<cmd>BufferLineMovePrev<cr>" }

M.nmap { "<f10>", "<cmd>Neotree toggle<cr>" }

M.nmap { "k", "gk" }
M.nmap { "j", "gj" }
M.nmap { "0", "g0" }
M.nmap { "$", "g$" }

return M

