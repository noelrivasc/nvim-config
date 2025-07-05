# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration using Packer as the plugin manager. The configuration is organized in a modular structure under the `lua/core/` directory.

## Plugin Management

- **Plugin Manager**: Packer (managed in `lua/core/plugins.lua`)
- **Installation Path**: `~/.local/share/nvim` (managed by Packer, do not modify manually)
- **Plugin Configuration**: Individual plugin configs are in `lua/core/plugin_config/`

### Key Plugins
- **LSP**: Mason + mason-lspconfig + nvim-lspconfig for language server management
- **File Explorer**: nvim-tree with nvim-web-devicons
- **Fuzzy Finding**: ctrlp.vim
- **Syntax Highlighting**: nvim-treesitter
- **Theme**: gruvbox.nvim
- **Debugging**: vdebug (PHP debugging with ddev compatibility)
- **Status Line**: lualine.nvim

## Architecture

```
init.lua                    # Entry point, requires core modules
lua/core/
├── plugins.lua            # Packer setup and plugin declarations
├── keymaps.lua            # Key bindings and cheatsheet
├── editorbasics.lua       # Basic editor settings
└── plugin_config/
    ├── init.lua           # Loads all plugin configurations
    ├── lsp_config.lua     # LSP server enablement
    ├── mason-lspconfig.lua # LSP server installation list
    └── [other configs]    # Individual plugin configurations
```

## Language Server Configuration

LSP is configured through three components:
1. **Mason**: Installs language servers
2. **mason-lspconfig**: Bridges LSP servers to lspconfig 
3. **nvim-lspconfig**: Provides LSP server configurations

### Configured Language Servers
- bashls, cssls, dockerls, html, jsonls
- ts_ls (TypeScript/JavaScript)
- lua_ls (Lua)
- marksman (Markdown)
- phpactor (PHP)
- sqlls, twiggy_language_server (Twig templates)
- yamlls

## Key Bindings

- **Leader Key**: `,` (comma)
- **File Navigation**: `<leader>t` (toggle nvim-tree), `<leader>f` (find current file in tree)
- **Buffer Management**: `<leader>n` (next buffer), `<leader>.` (close buffer)
- **Split Navigation**: `<leader>h/j/k/l` (move between splits)
- **LSP Diagnostics**: `<leader>d[f/p/n/l]` (float/prev/next/list)
- **LSP Navigation**: `<leader>g[D/d/h/i/s]` (declaration/definition/hover/implementation/signature)

## Development Notes

- The configuration includes per-project nvim configuration support (commented out)
- vdebug is configured with ddev-compatible path mapping
- Font requirements: NerdFont (currently FiraCode) for nvim-tree icons
- Some plugins are disabled: vim-closer (too aggressive), null-ls/mason-null-ls (commented out)
- Clojure development support included with rainbow parentheses

## File System Requirements

- NerdFont installed and configured in terminal for proper icon display
- Git repository support expected (vdebug path mappings assume typical project structure)