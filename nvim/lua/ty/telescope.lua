local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    -- file_sorter = require("telescope.sorters").get_fzy_sorter,
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<Tab>"] = actions.toggle_selection,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next
      }
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
    -- fzy_native = {
    --   override_generic_sorter = true,
    --   override_file_sorter = true
    -- }
  }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
-- require('telescope').load_extension('fzy_native')
require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"
