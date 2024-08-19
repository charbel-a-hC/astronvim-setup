local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Custom mapping for Telescope live_grep
map('n', '<leader>fg', ':Telescope live_grep<CR>', opts)
