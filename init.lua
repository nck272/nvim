-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.shell")
require("config.terminal")
require("config.no-italic")

vim.cmd("hi clear")
vim.cmd.colorscheme("retro-82")

-- require("config.background").set("#111111", "#FFFFFF") -- transparent
