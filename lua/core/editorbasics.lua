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

-- ****************************************************
-- LOCAL NVIM CONFIGURATION ***************************
-- ****************************************************
--
-- The code below allows you to read a project-specific nvim
-- configuration lua file. It finds the project root, and if
-- any of the supported files is found, it is run.
--
-- This can be used, for example, to set the mapping of remote
-- to local code paths for vdebug.
--
-- local function find_project_root()
--   local current_dir = vim.fn.getcwd()
--   local dir = current_dir
-- 
--   while dir ~= "/" do
--     if vim.fn.isdirectory(dir .. "/.git") == 1 then
--       return dir
--     end
--     dir = vim.fn.fnamemodify(dir, ":h")
--   end
-- 
--   return current_dir
-- end
-- 
-- -- Source local project configuration
-- -- Example use:
-- -- In .nvim/init.lua (at project root)
-- -- vim.g.vdebug_options = {
-- --   path_maps = {
-- --     ["/path/in/container"] = "/local/project/path"
-- --   }
-- -- }
-- local function source_local_config()
--   local project_root = find_project_root()
--   local local_configs = {
--     project_root .. "/.nvim/init.lua",
--     project_root .. "/.nvimrc.lua",
--     project_root .. "/.vim/init.lua"
--   }
-- 
--   for _, config_path in ipairs(local_configs) do
--     if vim.fn.filereadable(config_path) == 1 then
--       dofile(config_path)
--       break
--     end
--   end
-- end
-- 
-- source_local_config()
