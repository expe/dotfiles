-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/exp/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/exp/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/exp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/exp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/exp/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["github-light.vim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/github-light.vim",
    url = "https://github.com/romgrk/github-light.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\nsigns\17changedelete\1\0\2\ahl\26GitGutterChangeDelete\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\b‾\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\b│\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\b│\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3�\a\22ignore_whitespace\1\18virt_text_pos\beol\1\0\3!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\23current_line_blame\1\15debug_mode\1\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["gruvbuddy.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim",
    url = "https://github.com/tjdevries/gruvbuddy.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n�\17\0\0\6\0:\0Y6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\4=\4\29\3=\3\30\0025\3\31\0005\4 \0=\4!\0035\4#\0005\5\"\0=\5$\4=\4%\3=\3&\0024\3\0\0=\3'\0025\3-\0005\4(\0005\5)\0=\5*\0044\5\0\0=\5+\0044\5\0\0=\5,\4=\4.\0035\0040\0005\5/\0=\5%\4=\4&\3=\0031\0025\0032\0005\0044\0005\0053\0=\5%\4=\4&\3=\0035\0025\0038\0005\0046\0005\0057\0=\5%\4=\4&\3=\3\29\2B\0\2\0016\0\0\0009\0\1\0'\0029\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\6A\16git_add_all\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6H\18toggle_hidden\6.\rset_root\6f\21filter_on_submit\t<bs>\16navigate_up\6/\17fuzzy_finder\n<c-x>\17clear_filter\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\20hide_by_pattern\17hide_by_name\1\3\0\0\14.DS_Store\14thumbs.db\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\f<space>\1\0\18\6t\16open_tabnew\6p\25paste_from_clipboard\6w\28open_with_window_picker\6x\21cut_to_clipboard\6y\22copy_to_clipboard\6r\vrename\6d\vdelete\6A\18add_directory\6a\badd\6C\15close_node\6c\tcopy\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6s\16open_vsplit\6R\frefresh\6q\17close_window\6m\tmove\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\runstaged\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\rmodified\5\fignored\b\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\4\fdefault\6*\16folder_open\b\17folder_empty\bﰊ\18folder_closed\b\vindent\1\0\0\1\0\t\17with_markers\2\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\1\0\4\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["night-owl-vim-theme"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/night-owl-vim-theme",
    url = "https://github.com/Khaledgarbaya/night-owl-vim-theme"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/exp/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-bufdel"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-bufdel",
    url = "https://github.com/ojroques/nvim-bufdel"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/exp/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-github.nvim",
    url = "https://github.com/nvim-telescope/telescope-github.nvim"
  },
  ["telescope-node-modules.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-node-modules.nvim",
    url = "https://github.com/nvim-telescope/telescope-node-modules.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://github.com/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-colors-synthwave"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-colors-synthwave",
    url = "https://github.com/TroyFletcher/vim-colors-synthwave"
  },
  ["vim-equinusocio-material"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-equinusocio-material",
    url = "https://github.com/chuling/vim-equinusocio-material"
  },
  ["vim-lua"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-lua",
    url = "https://github.com/tbastos/vim-lua"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "/home/exp/.local/share/nvim/site/pack/packer/start/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n^\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\25update_commentstring&ts_context_commentstring.internal\frequireO\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\thook\1\0\0\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\n�\17\0\0\6\0:\0Y6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0005\3\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\a\0005\3\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\t\0005\3\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\2\v\0005\3\f\0B\0\3\0016\0\r\0'\2\14\0B\0\2\0029\0\15\0005\2\16\0005\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\27\0005\5\26\0=\5\28\4=\4\29\3=\3\30\0025\3\31\0005\4 \0=\4!\0035\4#\0005\5\"\0=\5$\4=\4%\3=\3&\0024\3\0\0=\3'\0025\3-\0005\4(\0005\5)\0=\5*\0044\5\0\0=\5+\0044\5\0\0=\5,\4=\4.\0035\0040\0005\5/\0=\5%\4=\4&\3=\0031\0025\0032\0005\0044\0005\0053\0=\5%\4=\4&\3=\0035\0025\0038\0005\0046\0005\0057\0=\5%\4=\4&\3=\3\29\2B\0\2\0016\0\0\0009\0\1\0'\0029\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\6A\16git_add_all\agr\20git_revert_file\agp\rgit_push\aga\17git_add_file\agg\24git_commit_and_push\agu\21git_unstage_file\agc\15git_commit\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\abd\18buffer_delete\6.\rset_root\t<bs>\16navigate_up\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\6H\18toggle_hidden\6.\rset_root\6f\21filter_on_submit\t<bs>\16navigate_up\6/\17fuzzy_finder\n<c-x>\17clear_filter\19filtered_items\1\0\3\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\24follow_current_file\2\15never_show\20hide_by_pattern\17hide_by_name\1\3\0\0\14.DS_Store\14thumbs.db\1\0\3\20hide_gitignored\2\18hide_dotfiles\2\fvisible\1\18nesting_rules\vwindow\rmappings\f<space>\1\0\18\6t\16open_tabnew\6p\25paste_from_clipboard\6w\28open_with_window_picker\6x\21cut_to_clipboard\6y\22copy_to_clipboard\6r\vrename\6d\vdelete\6A\18add_directory\6a\badd\6C\15close_node\6c\tcopy\6S\15open_split\t<cr>\topen\18<2-LeftMouse>\topen\6s\16open_vsplit\6R\frefresh\6q\17close_window\6m\tmove\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\fnoremap\2\vnowait\2\1\0\2\nwidth\3(\rposition\tleft\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\runstaged\b\14untracked\b\frenamed\b\fdeleted\b✖\nadded\5\rconflict\b\vstaged\b\rmodified\5\fignored\b\tname\1\0\2\19trailing_slash\1\26use_git_status_colors\2\rmodified\1\0\2\14highlight\20NeoTreeModified\vsymbol\b[+]\ticon\1\0\4\fdefault\6*\16folder_open\b\17folder_empty\bﰊ\18folder_closed\b\vindent\1\0\0\1\0\t\17with_markers\2\fpadding\3\1\16indent_size\3\2\14highlight\24NeoTreeIndentMarker\23expander_highlight\20NeoTreeExpander\22expander_expanded\b\23expander_collapsed\b\23last_indent_marker\b└\18indent_marker\b│\1\0\4\25close_if_last_window\1\23enable_diagnostics\2\22enable_git_status\2\23popup_border_style\frounded\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\t\0005\4\5\0005\5\4\0=\5\6\0045\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\20include_current\1\19autoselect_one\2\23other_win_hl_color\f#e35e4f\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\5\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\3=\3\17\2B\0\2\1K\0\1\0\nsigns\17changedelete\1\0\2\ahl\26GitGutterChangeDelete\ttext\6~\14topdelete\1\0\2\ahl\20GitGutterDelete\ttext\b‾\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\6_\vchange\1\0\2\ahl\20GitGutterChange\ttext\b│\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\b│\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3�\a\22ignore_whitespace\1\18virt_text_pos\beol\1\0\3!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\23current_line_blame\1\15debug_mode\1\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType astro ++once lua require("packer.load")({'vim-prettier'}, { ft = "astro" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-prettier'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-prettier'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-prettier'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-prettier'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], false)
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], true)
vim.cmd [[source /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]]
time([[Sourcing ftdetect script at: /home/exp/.local/share/nvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
