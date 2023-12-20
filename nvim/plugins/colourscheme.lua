return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
  { "catppuccin/nvim", lazy = true, name = "catppuccin" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
