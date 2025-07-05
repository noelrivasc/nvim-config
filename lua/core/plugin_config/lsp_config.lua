require('mason').setup()

vim.lsp.enable('phpactor')
vim.lsp.enable('ts_ls')
vim.lsp.enable('twiggy_language_server')

-- Filetype detection for Twig files
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.html.twig",
  callback = function()
    vim.bo.filetype = "twig"
  end,
})
