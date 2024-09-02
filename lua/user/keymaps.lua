local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local wk = require("which-key")

-- Custom mapping for Telescope live_grep
map('n', '<leader>fp', ":lua vim.notify('File Path: ' .. vim.fn.expand('%:p'))<CR>", { noremap = true, silent = true, desc = "Show File Path"})
