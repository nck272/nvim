-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.terminal")
require("config.no-italic")

local bg = "#111111"
local fg = "#FFFFFF"

local function apply_overrides()
  vim.api.nvim_set_hl(0, "Keyword", { fg = "#F05E48" })
  vim.api.nvim_set_hl(0, "Function", { fg = "#FFFFFF" })

  vim.api.nvim_set_hl(0, "@field", { fg = "#FFFFFF" })
  vim.api.nvim_set_hl(0, "@property", { fg = "#FFFFFF" })
  vim.api.nvim_set_hl(0, "@parameter", { fg = "#FFFFFF" })

  local background = require("config.background")
  background.set(bg, fg)
  background.set_lualine("auto", bg, fg)
  background.set_buffer_line(bg, fg)
end

local colorscheme = "naysayer"

vim.api.nvim_create_autocmd("colorscheme", { pattern = colorsheme, callback = apply_overrides })

vim.cmd("hi clear")
vim.cmd.colorscheme(colorscheme)

apply_overrides()
