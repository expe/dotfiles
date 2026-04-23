return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              -- 1. Your single-press Esc to close the picker immediately
              ["<Esc>"] = { "close", mode = { "n", "i" } },
            },
          },
        },
      },
    },
    -- 2. Custom keymaps to open different pickers
    keys = {
      -- Find Files (Root Dir)
      {
        "<C-p>",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      },
      -- Recent Files
      {
        "<leader>fr",
        function()
          Snacks.picker.recent()
        end,
        desc = "Recent Files",
      },
      -- Live Grep (Search through all files)
      {
        "<leader>r",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep Search",
      },
      -- Open Buffers
      {
        "<leader>,",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Buffers",
      },
      -- File Explorer (Picker version)
      {
        "<F10>",
        function()
          Snacks.picker.explorer()
        end,
        desc = "File Explorer",
      },
      -- Resume the last picker
      {
        "<leader>sr",
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume Last Picker",
      },
      -- Resume the last picker
      {
        "<leader>sr",
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume Last Picker",
      },
    },
  },
}
