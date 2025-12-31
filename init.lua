local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

local scheme = "gruvbuddy"

require("lazy").setup({
  spec = {
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
      opts = {
        colorscheme = scheme,
      },
    },
    { import = "plugins" },
    { "folke/noice.nvim", enabled = false },
    {
      "snacks.nvim",
      opts = {
        words = { enabled = false },
        explorer = { enabled = false },
      },
    },
  },
  defaults = {
    lazy = false,
    version = false,
  },
})

require("config.options")
require("config.terminal")
require("config.keymaps")

vim.cmd.colorscheme(scheme)

vim.keymap.del("n", "<leader>e")
vim.keymap.del("n", "<leader>fe")

-- vim.cmd([[
--   hi Normal           guibg=none
--   hi NormalNC         guibg=none
--   hi NormalFloat      guibg=none
--   hi SignColumn       guibg=none
--   hi FoldColumn       guibg=none
--   hi LineNr           guibg=none
--   hi CursorLineNr     guibg=none
--   hi VertSplit        guibg=none
--   hi EndOfBuffer      guibg=none
--
--   hi TabLine          guibg=none
--   hi TabLineFill      guibg=none
--   hi TabLineSel       guibg=none
--
--   hi StatusLine       guibg=none
--   hi StatusLineNC     guibg=none
--
--   hi WinBar           guibg=none
--   hi WinBarNC         guibg=none
-- ]])
