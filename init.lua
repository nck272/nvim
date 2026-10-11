-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.shell")
require("config.terminal")
require("config.no-italic")
-- require("config.background").set(none, "#FFFFFF") -- transparent

vim.cmd("hi clear")
vim.cmd.colorscheme("sols")
