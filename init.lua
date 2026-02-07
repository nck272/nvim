vim.g.mapleader = " "
vim.g.autoformat = true
vim.opt.termguicolors = true

require("custom.dotenv").eval(vim.fs.joinpath(vim.fn.stdpath("config"), ".env")) ---@diagnostic disable-line: param-type-mismatch

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

-- Add lazy to the `runtimepath`, this allows us to `require` it.
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ import = "custom/plugins" }, {
	change_detection = {
		notify = false,
	},
})

-- Transparent background
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
