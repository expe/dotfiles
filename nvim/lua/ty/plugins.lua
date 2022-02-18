return require "packer".startup(
  function(use)
    -- Packer can manage itself as an optional plugin
    use {"nvim-lua/popup.nvim"}
    use {"nvim-lua/plenary.nvim"}
    use {"wbthomason/packer.nvim"}
    use {"tpope/vim-surround"}
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
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end
    }

    use {"junegunn/vim-easy-align"}
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

    -- Editor Config
    use {"editorconfig/editorconfig-vim"}

    -- Git
    use {
      "lewis6991/gitsigns.nvim",
      config = function()
        require "gitsigns".setup {
          debug_mode = false,
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

    use {"hrsh7th/nvim-compe"}
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
    use {"nvim-telescope/telescope-fzy-native.nvim"}

    -- use {"kyazdani42/nvim-web-devicons"}
    -- use {"yamatsum/nvim-nonicons"}
  end
)

