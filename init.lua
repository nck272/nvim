-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.terminal")
require("config.no-italic")

vim.cmd("hi clear")
vim.cmd.colorscheme("habamax.nvim")

require("config.background")("#111111")
