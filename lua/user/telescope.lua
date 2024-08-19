local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        -- Insert mode mappings
        ["<C-y>"] = function(prompt_bufnr)
          local entry = require("telescope.actions.state").get_selected_entry()
          local content = entry.value
          vim.fn.setreg('+', content)  -- Copy to system clipboard
          vim.fn.setreg('"', content)  -- Copy to unnamed register
          print("Yanked: " .. content)
        end
      },
      n = {
        -- Normal mode mappings
        ["y"] = function(prompt_bufnr)
          local entry = require("telescope.actions.state").get_selected_entry()
          local content = entry.value
          vim.fn.setreg('+', content)  -- Copy to system clipboard
          vim.fn.setreg('"', content)  -- Copy to unnamed register
          print("Yanked: " .. content)
        end
      }
    }
  }
}
