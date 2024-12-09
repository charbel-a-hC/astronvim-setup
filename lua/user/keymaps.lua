local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local wk = require "which-key"

-- Custom mapping for Telescope live_grep
map(
  "n",
  "<leader>fp",
  ":lua vim.notify('File Path: ' .. vim.fn.expand('%:p'))<CR>",
  { noremap = true, silent = true, desc = "Show File Path" }
)

map("n", "<leader>fl", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Live Grep" })

vim.api.nvim_set_keymap("n", "<leader>dw", '"_dw', { noremap = true, silent = true, desc = "Black HOLE" })