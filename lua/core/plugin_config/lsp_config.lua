require('mason').setup()

-- Setup language servers.
local lspconfig = require('lspconfig')

-- Configure phpactor with proper root directory detection
lspconfig.phpactor.setup({
  root_dir = lspconfig.util.root_pattern('composer.json', 'phpunit.xml', '.phpunit.xml', '.git', '.'),
})

vim.lsp.enable('phpactor')
vim.lsp.enable('ts_ls')
