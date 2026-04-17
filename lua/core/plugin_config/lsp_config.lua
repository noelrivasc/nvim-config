-- Custom local registry hosts packages not yet upstreamed (e.g. allium-lsp).
-- Install with `:MasonInstall allium-lsp`; nvim-allium picks it up from $PATH.
require('mason').setup({
  registries = {
    'github:mason-org/mason-registry',
    'file:' .. vim.fn.stdpath('config') .. '/mason-registry',
  },
})

vim.lsp.enable('clojure_lsp')
vim.lsp.enable('phpactor')
vim.lsp.config('eslint', {
  settings = {
    useFlatConfig = true,
  },
})
vim.lsp.enable('eslint')
vim.lsp.enable('ts_ls')
vim.lsp.enable('twiggy_language_server')

-- Filetype detection for Twig files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.html.twig",
  callback = function()
    vim.bo.filetype = "twig"
  end,
})
