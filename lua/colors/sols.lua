local colors = {
  yellow = "#fce094",
  orange = "#f4a261",
  red = "#ffc0b9",
  magenta = "#ffcaff",
  blue = "#a6dbff",
  green = "#b4f6c0",
  cyan = "#8cf8f7",
  white = "#eef1f8",
  superwhite = "#ffffff",

  grey1 = "#eef1f8",
  grey2 = "#e0e2ea",
  grey3 = "#c4c6cd",
  grey4 = "#9b9ea4",

  black1 = "#07080d",
  black2 = "#14161b",
  black3 = "#2c2e33",
  black4 = "#4f5258",

  background = "#111111",
  gutter = "#111111",
  selection = "#0000ff",
  text = "#eef1f8",
  comment = "#53d549",
  type_ = "#9af2c0",
  keyword = "#ffffff",
  variable = "#a6dbff",
  function_ = "#d0b892",
  member = "#d0b892",
  constant = "#8cf8f7",
  macro = "#f4a261",
  number = "#8cf8f7",
  error = "#ff0000",
  warning = "#ffaa00",
  highlight = "#323232",
}

vim.cmd("hi clear")
vim.cmd.colorscheme("default")

vim.o.background = "dark"
vim.g.colors_name = "sols"

-- Core UI
vim.api.nvim_set_hl(0, "Normal", { fg = colors.text, bg = colors.background })
vim.api.nvim_set_hl(0, "Cursor", { bg = colors.orange })
vim.api.nvim_set_hl(0, "Visual", { bg = colors.selection })
vim.api.nvim_set_hl(0, "LineNr", { fg = colors.black4, bg = colors.background })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.orange, bg = colors.background })
vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.highlight })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.highlight })
vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.superwhite })
vim.api.nvim_set_hl(0, "MatchParen", { bg = colors.selection })

-- Syntax
vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment })
vim.api.nvim_set_hl(0, "String", { fg = colors.green })
vim.api.nvim_set_hl(0, "Number", { fg = colors.number })
vim.api.nvim_set_hl(0, "Boolean", { fg = colors.constant })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.constant })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.variable })
vim.api.nvim_set_hl(0, "Function", { fg = colors.function_ })
vim.api.nvim_set_hl(0, "Member", { fg = colors.member })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.keyword })
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.keyword, bold = true })
vim.api.nvim_set_hl(0, "Type", { fg = colors.type_ })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.orange })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.macro })
vim.api.nvim_set_hl(0, "Punctuation", { fg = colors.grey3 })
vim.api.nvim_set_hl(0, "Special", { fg = colors.constant })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.warning })
vim.api.nvim_set_hl(0, "Error", { fg = colors.error })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.red })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.warning })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.blue })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.cyan })

-- Rainbow delimiters (optional)
vim.api.nvim_set_hl(0, "rainbowcol1", { fg = colors.magneta })
vim.api.nvim_set_hl(0, "rainbowcol2", { fg = colors.blue })
vim.api.nvim_set_hl(0, "rainbowcol3", { fg = colors.green })
vim.api.nvim_set_hl(0, "rainbowcol4", { fg = colors.yellow })
vim.api.nvim_set_hl(0, "rainbowcol5", { fg = colors.orange })
vim.api.nvim_set_hl(0, "rainbowcol6", { fg = colors.red })

-- Lualine integration
-- vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.lualine_fg, bg = colors.lualine_bg })
-- vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.line_fg, bg = colors.gutter })

-- Treesitter highlights
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.api.nvim_set_hl(0, "@string", { link = "String" })
vim.api.nvim_set_hl(0, "@number", { link = "Number" })
vim.api.nvim_set_hl(0, "@boolean", { link = "Boolean" })
vim.api.nvim_set_hl(0, "@constant", { link = "Constant" })
vim.api.nvim_set_hl(0, "@function", { link = "Function" })
vim.api.nvim_set_hl(0, "@function.macro", { link = "PreProc" })
vim.api.nvim_set_hl(0, "@function.builtin", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@variable.member", { link = "Member" })
vim.api.nvim_set_hl(0, "@type", { link = "Type" })
vim.api.nvim_set_hl(0, "@keyword", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@keyword.function", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@field", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@operator", { link = "Operator" })
vim.api.nvim_set_hl(0, "@property", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@parameter", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@punctuation", { link = "Punctuation" })
vim.api.nvim_set_hl(0, "@punctuation.delimiter", { link = "Macro" })

vim.api.nvim_set_hl(0, "@lsp.type.property", { link = "Member" })
vim.api.nvim_set_hl(0, "@lsp.type.macro", { link = "PreProc" })
