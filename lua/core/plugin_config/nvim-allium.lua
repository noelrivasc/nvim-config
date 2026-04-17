-- nvim-allium is glue: setup() wires the LSP client (binary comes from Mason
-- via the local registry) and installs LSP keymaps. The plugin separately
-- registers the tree-sitter-allium parser_config, which nvim-treesitter
-- auto_install then compiles.
require('allium').setup({
  lsp = {
    -- Using nvim's $PATH, which includes the lsp, installed by Mason, custom registry
    cmd = { 'allium-lsp', '--stdio' },
    filetypes = { 'allium' },
    root_markers = { 'allium.config.json', '.git' },
    settings = {},
  },
  keymaps = { enabled = false }, -- use the global LspAttach keymaps in keymaps.lua
})
