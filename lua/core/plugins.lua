local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  
  -- My plugins here
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'qpkorr/vim-bufkill'
  use 'rstacruz/vim-closer'
  use 'easymotion/vim-easymotion'
  use 'vim-vdebug/vdebug'
  use 'tpope/vim-surround'
  use 'norcalli/nvim-colorizer.lua'
  use 'mattn/emmet-vim'
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'lumiliet/vim-twig'
  use 'Glench/Vim-Jinja2-Syntax'
  use 'ctrlpvim/ctrlp.vim'

  use {
    'neovim/nvim-lspconfig',
    -- 'jose-elias-alvarez/null-ls.nvim',
    -- 'jayp0521/mason-null-ls.nvim',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  }
  
  -- I don't quite understand how ALE works or
  -- what LSP server it is listening to, but it 
  -- produced lots of errors. I'm trying CoC to see
  -- if I get better results ootb
  -- use 'dense-analysis/ale'
  

  -- Clojure stuff
  -- See https://tomekw.com/nvim-for-clojure-development/
  use 'guns/vim-clojure-highlight'
  use 'guns/vim-clojure-static'
  use 'luochen1990/rainbow'
  

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
