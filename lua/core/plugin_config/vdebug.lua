-- NOTE repeated function from editorconfig
-- DRY skipped to avoid dependencies
local function find_project_root()
  local current_dir = vim.fn.getcwd()
  local dir = current_dir

  while dir ~= "/" do
    if vim.fn.isdirectory(dir .. "/.git") == 1 then
      return dir
    end
    dir = vim.fn.fnamemodify(dir, ":h")
  end

  return current_dir
end

vim.g.vdebug_options = {
  port = 9003,
  path_maps = {
    ["/var/www/html"] = find_project_root()
  }
};
