return require "packer".startup(
  function(use)
    -- Packer can manage itself as an optional plugin
    use {"ggandor/leap.nvim"}
    require('leap').set_default_keymaps()

    use "lukas-reineke/indent-blankline.nvim"
    use {"nvim-lua/popup.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"wbthomason/packer.nvim"}
    use {"tpope/vim-surround"}
    use {"tpope/vim-repeat"}
    use {
      "terrortylor/nvim-comment",
      config = function()
        require("nvim_comment").setup(
          {
            hook = function()
              require('ts_context_commentstring.internal').update_commentstring()
            end
          }
        )
      end
    }
    use {"JoosepAlviste/nvim-ts-context-commentstring"}

    use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { 
          "nvim-lua/plenary.nvim",
          "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          {
            -- only needed if you want to use the "open_window_picker" command
            's1n7ax/nvim-window-picker',
            tag = "1.*",
            config = function()
              require'window-picker'.setup({
                autoselect_one = true,
                include_current = false,
                filter_rules = {
                  -- filter using buffer options
                  bo = {
                    -- if the file type is one of following, the window will be ignored
                    filetype = { 'neo-tree', "neo-tree-popup", "notify", "quickfix" },

                    -- if the buffer type is one of following, the window will be ignored
                    buftype = { 'terminal' },
                  },
                },
                other_win_hl_color = '#e35e4f',
              })
            end,
          }
        },
        config = function ()
          -- Unless you are still migrating, remove the deprecated commands from v1.x
          vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

          -- If you want icons for diagnostic errors, you'll need to define them somewhere:
          vim.fn.sign_define("DiagnosticSignError",
            {text = " ", texthl = "DiagnosticSignError"})
          vim.fn.sign_define("DiagnosticSignWarn",
            {text = " ", texthl = "DiagnosticSignWarn"})
          vim.fn.sign_define("DiagnosticSignInfo",
            {text = " ", texthl = "DiagnosticSignInfo"})
          vim.fn.sign_define("DiagnosticSignHint",
            {text = "", texthl = "DiagnosticSignHint"})
          -- NOTE: this is changed from v1.x, which used the old style of highlight groups
          -- in the form "LspDiagnosticsSignWarning"

          require("neo-tree").setup({
            close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
              indent = {
                indent_size = 2,
                padding = 1, -- extra padding on left hand side
                -- indent guides
                with_markers = true,
                indent_marker = "│",
                last_indent_marker = "└",
                highlight = "NeoTreeIndentMarker",
                -- expander config, needed for nesting files
                with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
                expander_collapsed = "",
                expander_expanded = "",
                expander_highlight = "NeoTreeExpander",
              },
              icon = {
                folder_closed = "",
                folder_open = "",
                folder_empty = "ﰊ",
                default = "*",
              },
              modified = {
                symbol = "[+]",
                highlight = "NeoTreeModified",
              },
              name = {
                trailing_slash = false,
                use_git_status_colors = true,
              },
              git_status = {
                symbols = {
                  -- Change type
                  added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                  modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                  deleted   = "✖",-- this can only be used in the git_status source
                  renamed   = "",-- this can only be used in the git_status source
                  -- Status type
                  untracked = "",
                  ignored   = "",
                  unstaged  = "",
                  staged    = "",
                  conflict  = "",
                }
              },
            },
            window = {
              position = "left",
              width = 40,
              mapping_options = {
                noremap = true,
                nowait = true,
              },
              mappings = {
                ["<space>"] = { 
                    "toggle_node", 
                    nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
                },
                ["<2-LeftMouse>"] = "open",
                ["<cr>"] = "open",
                ["S"] = "open_split",
                ["s"] = "open_vsplit",
                ["t"] = "open_tabnew",
                ["w"] = "open_with_window_picker",
                ["C"] = "close_node",
                ["a"] = "add",
                ["A"] = "add_directory",
                ["d"] = "delete",
                ["r"] = "rename",
                ["y"] = "copy_to_clipboard",
                ["x"] = "cut_to_clipboard",
                ["p"] = "paste_from_clipboard",
                ["c"] = "copy", -- takes text input for destination
                ["m"] = "move", -- takes text input for destination
                ["q"] = "close_window",
                ["R"] = "refresh",
              }
            },
            nesting_rules = {},
            filesystem = {
              filtered_items = {
                visible = false, -- when true, they will just be displayed differently than normal items
                hide_dotfiles = true,
                hide_gitignored = true,
                hide_by_name = {
                  ".DS_Store",
                  "thumbs.db"
                  --"node_modules"
                },
                hide_by_pattern = { -- uses glob style patterns
                  --"*.meta"
                },
                never_show = { -- remains hidden even if visible is toggled to true
                  --".DS_Store",
                  --"thumbs.db"
                },
              },
              follow_current_file = true, -- This will find and focus the file in the active buffer every
                                           -- time the current file is changed while the tree is open.
              hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                                      -- in whatever position is specified in window.position
                                    -- "open_current",  -- netrw disabled, opening a directory opens within the
                                                      -- window like netrw would, regardless of window.position
                                    -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
              use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                                              -- instead of relying on nvim autocmd events.
              window = {
                mappings = {
                  ["<bs>"] = "navigate_up",
                  ["."] = "set_root",
                  ["H"] = "toggle_hidden",
                  ["/"] = "fuzzy_finder",
                  ["f"] = "filter_on_submit",
                  ["<c-x>"] = "clear_filter",
                }
              }
            },
            buffers = {
              show_unloaded = true,
              window = {
                mappings = {
                  ["bd"] = "buffer_delete",
                  ["<bs>"] = "navigate_up",
                  ["."] = "set_root",
                }
              },
            },
            git_status = {
              window = {
                position = "float",
                mappings = {
                  ["A"]  = "git_add_all",
                  ["gu"] = "git_unstage_file",
                  ["ga"] = "git_add_file",
                  ["gr"] = "git_revert_file",
                  ["gc"] = "git_commit",
                  ["gp"] = "git_push",
                  ["gg"] = "git_commit_and_push",
                }
              }
            }
          })

          vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
        end
    }

    -- use {"junegunn/vim-easy-align"}
    use {"ojroques/nvim-bufdel"}
    use {"mg979/vim-visual-multi"}
    use {
        "hoob3rt/lualine.nvim",
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use {"akinsho/nvim-bufferline.lua"}

    -- Colors
    use {"morhetz/gruvbox"}
    use {"chuling/vim-equinusocio-material"}
    use {"romgrk/github-light.vim"}
    use {"Khaledgarbaya/night-owl-vim-theme"}
    use {'mhartington/oceanic-next'}
    use {"TroyFletcher/vim-colors-synthwave"}
    use {"tjdevries/colorbuddy.vim"}
    use {"tjdevries/gruvbuddy.nvim"}
    use {"folke/tokyonight.nvim"}
    use {"catppuccin/nvim", as = "catppuccin"}


    -- Editor Config
    use {"editorconfig/editorconfig-vim"}

    -- Git
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require "gitsigns".setup {
          debug_mode = false,
          current_line_blame = false,
          current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
            delay = 1000,
            ignore_whitespace = false,
          },
          current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
          signs = {
            add = {hl = "GitGutterAdd", text = "│"},
            change = {hl = "GitGutterChange", text = "│"},
            delete = {hl = "GitGutterDelete", text = "_"},
            topdelete = {hl = "GitGutterDelete", text = "‾"},
            changedelete = {hl = "GitGutterChangeDelete", text = "~"}
          }
        }
      end
    }

    -- -- Markdown
    use {"tpope/vim-markdown", ft = "markdown"}
    use {"rhysd/vim-grammarous"}
    -- Rust
    use {"rust-lang/rust.vim"}

    -- JS/TS
    use {
      "prettier/vim-prettier",
      ft = { "html", "javascript", "typescript", "css"},
      run = "yarn install"
    }
    -- use {"othree/yajs.vim"}
    -- use {"MaxMEllon/vim-jsx-pretty"}
    -- use {"heavenshell/vim-jsdoc"}
    -- use {"elzr/vim-json"}
    -- use {"neoclide/jsonc.vim"}
    -- use {"jxnblk/vim-mdx-js"}
    -- HTML
    use {"othree/html5.vim"}
    use {"mattn/emmet-vim"}
    use {"skwp/vim-html-escape"}
    use {"kana/vim-textobj-user"}
    use {"whatyouhide/vim-textobj-xmlattr"}
    -- CSS
    use {"hail2u/vim-css3-syntax"}
    use {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require "colorizer".setup()
      end
    }
    -- Reason
    -- use{ "reasonml-editor/vim-reason-plus" }
    -- Go
    -- use{ "fatih/vim-go" }
    -- Lua
    use {"tbastos/vim-lua"}

    use {"nvim-treesitter/nvim-treesitter"}
    use {"nvim-treesitter/playground"}

    use {"hrsh7th/nvim-cmp"}
    use {"hrsh7th/cmp-nvim-lsp"}
    use {"hrsh7th/cmp-buffer"}
    use {"hrsh7th/cmp-path"}
    use {"hrsh7th/cmp-cmdline"}

    use {"L3MON4D3/LuaSnip"}
    use {"saadparwaiz1/cmp_luasnip"}


    -- LSP
    use {"neovim/nvim-lspconfig"}
    use {"glepnir/lspsaga.nvim"}
    --
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {"nvim-telescope/telescope-github.nvim"}
    use {"nvim-telescope/telescope-packer.nvim"}
    use {"nvim-telescope/telescope-node-modules.nvim"}
    -- use {"nvim-telescope/telescope-fzy-native.nvim"}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "nvim-telescope/telescope-file-browser.nvim" }

    -- use {"kyazdani42/nvim-web-devicons"}
    -- use {"yamatsum/nvim-nonicons"}
  end
)

