-- Sort-of copied from https://roobert.github.io/2022/12/03/Extending-Neovim/
-- while trying to figure things out
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "cssls",
    "clojure_lsp",
    "dockerls",
    "html",
    "jsonls",
    "ts_ls",
    "lua_ls",
    "marksman",
    "phpactor",
    "sqlls",
    "twiggy_language_server",
    "yamlls"
  }
})
