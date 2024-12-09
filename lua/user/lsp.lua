local lspconfig = require "lspconfig"

-- Setup Clangd
lspconfig.clangd.setup {
  on_attach = function(_, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr, desc = "" }
    -- Default LSP keybindings
    vim.keymap.set(
      "n",
      "gd",
      vim.lsp.buf.definition,
      { noremap = true, silent = true, buffer = bufnr, desc = "Go to definition" }
    ) -- Go to definition
    vim.keymap.set(
      "n",
      "gD",
      vim.lsp.buf.declaration,
      { noremap = true, silent = true, buffer = bufnr, desc = "Go to declaration" }
    ) -- Go to declaration
    vim.keymap.set(
      "n",
      "gi",
      vim.lsp.buf.implementation,
      { noremap = true, silent = true, buffer = bufnr, desc = "Go to implementation" }
    ) -- Go to implementation
    vim.keymap.set(
      "n",
      "gr",
      vim.lsp.buf.references,
      { noremap = true, silent = true, buffer = bufnr, desc = "Go to references" }
    ) -- Go to references
    vim.keymap.set(
      "n",
      "K",
      vim.lsp.buf.hover,
      { noremap = true, silent = true, buffer = bufnr, desc = "Hover for documentation" }
    ) -- Hover for documentation
    vim.keymap.set(
      "n",
      "<leader>rn",
      vim.lsp.buf.rename,
      { noremap = true, silent = true, buffer = bufnr, desc = "Rename Symbol" }
    ) -- Rename symbol
  end,
}
