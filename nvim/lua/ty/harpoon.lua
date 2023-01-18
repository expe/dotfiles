local M = require("ty.keymaps")
require("harpoon").setup({})

M.nmap { "<leader>a", function() require("harpoon.mark").add_file() end }
M.nmap { "<leader>h", function() require("harpoon.ui").toggle_quick_menu() end }

M.nmap { "<F1>", function() require("harpoon.ui").nav_file(1) end }
M.nmap { "<F2>", function() require("harpoon.ui").nav_file(2) end }
M.nmap { "<F3>", function() require("harpoon.ui").nav_file(3) end }
M.nmap { "<F4>", function() require("harpoon.ui").nav_file(4) end }

