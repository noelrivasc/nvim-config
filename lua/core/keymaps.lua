vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Fast save and quit
vim.keymap.set('n', '<leader>q', ':q<cr>')
vim.keymap.set('n', '<leader>w', ':w<cr>')

-- Move to next buffer
vim.keymap.set('n', '<leader>n', ':bnext<cr>')

-- Close current buffer
vim.keymap.set('n', '<leader>.', ':BD<cr>')

-- Move between splits
vim.keymap.set('n', '<leader>h', '<c-w><c-h>')
vim.keymap.set('n', '<leader>j', '<c-w><c-j>')
vim.keymap.set('n', '<leader>k', '<c-w><c-k>')
vim.keymap.set('n', '<leader>l', '<c-w><c-l>')

-- Expand and balance splits
vim.keymap.set('n', '<leader>+', '100<c-w>+')
vim.keymap.set('n', '<leader>-', '<c-w>=')

-- NvimTree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFile<cr>') -- Opens NT and locates the cursor in the current file

-- NvimTree defaults:
-- <C-X> Open in new horizontal split
-- <Tab> Preview
-- <C-K> Info
-- H Toggle dotfiles
-- I toggle gitignore files
-- P Parent
-- m Toggle bookmark
-- a create
-- d delete
-- r Rename

-- Search
vim.keymap.set('n', '<leader>s', '/');
-- Enable (sh) or disable (sn) search highlighting
vim.keymap.set('n', '<leader>sh', ':set hlsearch<cr>');
vim.keymap.set('n', '<leader>sn', ':set nohlsearch<cr>');

-- Helpful keystrokes
-- CTRL + U To delete the comment leader after hitting enter

-- Inspired in the lspconfig README:

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
--
-- PATTERN: <leader>d[KEY]
-- Where the "d" stands for "diagnostic"
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist)

-- Move using leap
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    --
    local opts = { buffer = ev.buf }

    -- PATTERN: <leader>g[KEY]
    -- Where the "g" stands for "go to" used very loosely since the actions
    -- will not only navigate to other buffers, but sometimes open help panes
    vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>gh', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<leader>gs', vim.lsp.buf.signature_help, opts)

    -- I'm not sure about these yet. Keeping them disabled
    -- to avoid bloat and keep things understandable.
    --
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    -- vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- vim.keymap.set('n', '<space>f', function()
    --   vim.lsp.buf.format { async = true }
    -- end, opts)
  end,
})
