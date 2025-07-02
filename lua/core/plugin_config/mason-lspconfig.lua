-- Sort-of copied from https://roobert.github.io/2022/12/03/Extending-Neovim/
-- while trying to figure things out
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "cssls",
    "dockerls",
    "html",
    "jsonls",
    "ts_ls",
    "lua_ls",
    "marksman",
    "sqlls",
    "yamlls",
    "phpactor"
  }
})
