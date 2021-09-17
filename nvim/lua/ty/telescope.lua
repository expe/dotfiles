local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    file_sorter = require("telescope.sorters").get_fzy_sorter,
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
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true
    }
  }
}

