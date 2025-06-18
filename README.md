## Plugin Installation - Packer
Plugins are managed with Packer, which is initialized in `lua/core/plugins.lua`. The packages are ultimately installed in `~/.local/share/nvim` but it would be a bad idea to alter that directory manually, as any changes will be overridden by Packer on the next run.

## LSP - Mason
Language Server Protocol is configured with three plugins:

- Mason, which manages the installation of language servers.
- Mason-lspconfig, which bridges LSP servers to lspconfig
- nvim-lspconfig, which provides quickstart configurations for LSP servers

^ The points above are what I understood after a couple of hours of configuring NeoVim and reading a little about LSPs and their use. I may be wrong.

## Keymaps - Cheatsheet
`keymaps.lua` will serve two purposes: configure key bindings in nvim, and serve as a printable cheatsheet. So, if a keybinding is provided by some other package but I would like to remember it, adding some comments about it in `keymaps.lua` would be a good idea.

## NvimTree - font
Note that the icons in NvimTree rely on a font with icons being installed in the system and configured in iTerm2. I'm currently using FiraCode, obtained from nerdfonts.com
