vim.opt.wildignore:append { '*/vendor/*', '.git/*', '*/node_modules/*', '*/_site/*' }
-- Ignore git-ignored files
vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }

-- Sets the root of CtrlP to the current file, or
-- the directory where vim was started. This is
-- to prevent it from scanning everything under
-- the parent that contains .git
-- let g:ctrlp_working_path_mode = 'r' to use .git-containing ancestor
vim.g.ctrlp_working_path_mode = 0;
