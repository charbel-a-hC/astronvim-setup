return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  build = "cd app && npm install",
  config = function()
    -- Set up a key mapping for MarkdownPreview
    vim.api.nvim_set_keymap('n', '<leader>mp', ':MarkdownPreview<CR>', { noremap = true, silent = true, desc = "Markdown Preview" })
  end
}
