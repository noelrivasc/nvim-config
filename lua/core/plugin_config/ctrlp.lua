vim.opt.wildignore:append{'*/vendor/*', '.git/*', '*/node_modules/*'}
-- Sets the root of CtrlP to the current file, or
-- the directory where vim was started. This is
-- to prevent it from scanning everything under
-- the parent that contains .git
-- let g:ctrlp_working_path_mode = 'r' to use .git-containing ancestor
vim.g.ctrlp_working_path_mode = 0;
