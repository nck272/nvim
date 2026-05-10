-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.terminal")
require("config.no-italic")

local color_bg = "#111111"
local theme = "habamax"

vim.cmd("hi clear")
vim.cmd.colorscheme(theme)

local background = require("config.background")
background.set(color_bg)
background.set_lualine(theme, color_bg)
