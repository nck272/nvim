vim.g.mapleader = ' '
vim.g.autoformat = true
vim.opt.termguicolors = true

require('custom.dotenv').eval(vim.fs.joinpath(vim.fn.stdpath 'config', '.env')) ---@diagnostic disable-line: param-type-mismatch

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({ import = 'custom/plugins' }, {
  change_detection = {
    notify = false,
  },
})
