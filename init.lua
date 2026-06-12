-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.terminal")
require("config.no-italic")

local color_bg = "#181818"
local theme = "blue"

vim.cmd("hi clear")
vim.cmd.colorscheme(theme)

local background = require("config.background")
background.set(color_bg)
background.set_lualine("auto", color_bg)
background.set_buffer_line()
