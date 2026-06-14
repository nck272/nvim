-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.clipboard")
require("config.filetypes")
require("config.keymaps")
require("config.options")
require("config.terminal")
require("config.no-italic")

local bg = "#111111"
local fg = "#ffffff"

local function apply_overrides()
  vim.api.nvim_set_hl(0, "string", { fg = "#00ff00", ctermfg = 10 })
  vim.api.nvim_set_hl(0, "Visual", { bg = "#2c3e50", fg = "#ffffff", ctermbg = 24, ctermfg = 15 })

  local background = require("config.background")
  background.set(bg, fg)
  background.set_lualine("auto", bg, fg)
  background.set_buffer_line()
end

vim.api.nvim_create_autocmd("colorscheme", { pattern = "blue", callback = apply_overrides })

vim.cmd("hi clear")
vim.cmd("colorscheme blue")

apply_overrides()
