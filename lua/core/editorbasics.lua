vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.wrap = true
vim.opt.autoread = true

-- I'm not sure that the following
-- are working as expected ¬¬
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true

-- Line numbers
vim.opt.ruler = true
vim.opt.rnu = true

-- Case sensitivity in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Python provider integration
-- (needed by vdebug)
vim.g.python3_host_prog = vim.fn.stdpath('config') .. '/nvim-venv/bin/python3'
