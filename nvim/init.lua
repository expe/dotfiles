require "ty.plugins"
require "ty.mappings"
require "ty.options"
require "ty.telescope"
require "ty.lsp"

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

-- cmd 'colorscheme gruvbuddy'
require('colorbuddy').colorscheme('gruvbuddy')

cmd 'filetype plugin indent on'-- auto-indent depending on file type
cmd 'syntax on'             -- syntax highlighting on
cmd 'set hidden'            -- allow plugins to modify mult buffers (LC rename)
cmd 'set title'             -- set window title


require('lualine').setup()
require("bufferline").setup{
  options = {
    view = "default",
    -- numbers = "ordinal",
    buffer_close_icon = "",
    modified_icon = "•",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 18,
    max_prefix_length = 15,
    persist_buffer_sort = true,
    separator_style = {"", ""},
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    right_mouse_command = nil
  }
}

