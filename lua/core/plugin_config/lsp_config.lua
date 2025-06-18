require('mason').setup()

-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.ts_ls.setup{}
lspconfig.ghcide.setup{}
