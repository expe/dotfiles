require "ty.plugins"
require "ty.mappings"
require "ty.options"
require "ty.telescope"
require "ty.lsp"

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g

-- cmd 'colorscheme gruvbuddy'
-- require('colorbuddy').colorscheme('gruvbuddy')
-- vim.g.catppuccin_flavour = "mocha"
-- require('catppuccin').setup()
require("tokyonight").setup({
      -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
    on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.LineNr = {
      fg = c.dark5,
    }
    hl.CursorLineNr = { fg = c.fg }
  end,
})


cmd [[colorscheme tokyonight]]
cmd 'filetype plugin indent on'-- auto-indent depending on file type
cmd 'syntax on'             -- syntax highlighting on
cmd 'set hidden'            -- allow plugins to modify mult buffers (LC rename)
-- cmd 'set title'             -- set window title

-- vim.g.tokyonight_colors = { fg_gutter = "#707cb2", comment = "#709db2", dark5 = "#709db2" }


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

