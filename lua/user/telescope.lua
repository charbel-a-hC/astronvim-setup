local actions = require "telescope.actions"

-- require('telescope').setup{
--   defaults = {
--     mappings = {
--       i = {
--         -- Insert mode mappings
--         ["<C-y>"] = function(prompt_bufnr)
--           local entry = require("telescope.actions.state").get_selected_entry()
--           local content = entry.value
--           vim.fn.setreg('+', content)  -- Copy to system clipboard
--           vim.fn.setreg('"', content)  -- Copy to unnamed register
--           print("Yanked: " .. content)
--         end
--       },
--       n = {
--         -- Normal mode mappings
--         ["y"] = function(prompt_bufnr)
--           local entry = require("telescope.actions.state").get_selected_entry()
--           local content = entry.value
--           vim.fn.setreg('+', content)  -- Copy to system clipboard
--           vim.fn.setreg('"', content)  -- Copy to unnamed register
--           print("Yanked: " .. content)
--         end
--       }
--     }
--   }
-- }
-- In ~/.config/nvim/lua/plugins/telescope.lua

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      -- Optional but recommended
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    cmd = "Telescope",
    keys = {
      { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Find Text (Live Grep)" },
    },
    opts = function()
      return {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = "move_selection_next",
              ["<C-k>"] = "move_selection_previous",
            },
          },
          file_ignore_patterns = {
            "node_modules",
            ".git",
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
      }
    end,
    config = function(_, opts)
      require("telescope").setup(opts)
      -- Load extensions if you have them
      require("telescope").load_extension "file_browser"
      require("telescope").load_extension "fzf"
    end,
  },
}
