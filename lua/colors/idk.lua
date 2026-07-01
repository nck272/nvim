local colors = {
  yellow = "#E6DB74",
  orange = "#FD971F",
  red = "#F05E48",
  magenta = "#FD5FF0",
  blue = "#66D9EF",
  green = "#53d549",
  cyan = "#A1EFE4",
  violet = "#AE81FF",
  white = "#ffffff",
  black = "#000000",

  fg = "#FFFFFF",
  bg = "#181818",
  gutter = "#111111",
  selection = "#0000ff",
  text = "#d0b892",
  comment = "#53d549",
  punctuation = "#FFFFFF",
  keyword = "#F05E48",
  variable = "#FFFFFF",
  function_ = "#d0b892",
  struct = "#F05E48",
  string = "#3ad0b5",
  constant = "#87ffde",
  macro = "#8cde94",
  number = "#87ffde",
  error = "#ff0000",
  warning = "#ffaa00",
  highlight = "#0b3335",
  line_fg = "#126367",

  dimmed_keyword = "#b0b0b0",
  dimmed_function = "#cccccc",
  dimmed_variable = "#a0b8c8",
  dimmed_string = "#2fa89e",
  dimmed_type = "#79c4a6",
}

vim.cmd("highlight clear")
vim.o.background = "dark"
vim.g.colors_name = "idk"

local set = vim.api.nvim_set_hl

-- Core UI
set(0, "Normal", { fg = colors.fg, bg = colors.bg })
set(0, "Cursor", { bg = colors.white })
set(0, "Visual", { bg = colors.selection })
set(0, "LineNr", { fg = colors.fg, bg = colors.bg })
set(0, "CursorLineNr", { fg = colors.fg, bg = colors.bg })
set(0, "CursorLine", { bg = colors.highlight })
set(0, "ColorColumn", { bg = colors.highlight })
set(0, "VertSplit", { fg = colors.line_fg })
set(0, "MatchParen", { bg = colors.selection })

-- Syntax
set(0, "Comment", { fg = colors.comment })
set(0, "String", { fg = colors.string })
set(0, "Number", { fg = colors.number })
set(0, "Boolean", { fg = colors.constant })
set(0, "Constant", { fg = colors.constant })
set(0, "Identifier", { fg = colors.white })
set(0, "Function", { fg = colors.function_ })
set(0, "Statement", { fg = colors.keyword })
set(0, "Keyword", { fg = colors.keyword })
set(0, "Type", { fg = colors.punctuation })
set(0, "PreProc", { fg = colors.macro })
set(0, "Special", { fg = colors.orange })
set(0, "WarningMsg", { fg = colors.warning })
set(0, "Error", { fg = colors.error })

-- Diagnostics
set(0, "DiagnosticError", { fg = colors.red })
set(0, "DiagnosticWarn", { fg = colors.warning })
set(0, "DiagnosticInfo", { fg = colors.blue })
set(0, "DiagnosticHint", { fg = colors.cyan })

-- Rainbow delimiters (optional)
set(0, "rainbowcol1", { fg = colors.violet })
set(0, "rainbowcol2", { fg = colors.blue })
set(0, "rainbowcol3", { fg = colors.green })
set(0, "rainbowcol4", { fg = colors.yellow })
set(0, "rainbowcol5", { fg = colors.orange })
set(0, "rainbowcol6", { fg = colors.red })

-- Lualine integration
set(0, "StatusLine", { fg = colors.fg, bg = colors.bg })
set(0, "StatusLineNC", { fg = colors.fg, bg = colors.gutter })

-- Treesitter highlights
set(0, "@comment", { link = "Comment" })
set(0, "@string", { link = "String" })
set(0, "@number", { link = "Number" })
set(0, "@boolean", { link = "Boolean" })
set(0, "@constant", { link = "Constant" })
set(0, "@function", { link = "Function" })
set(0, "@function.builtin", { link = "Function" })
set(0, "@function.method.call", { link = "Normal" })
set(0, "@function.call", { link = "Normal" })
set(0, "@variable", { link = "Identifier" })
set(0, "@type", { link = "Type" })
set(0, "@keyword", { link = "Keyword" })
set(0, "@keyword.function", { link = "Keyword" })
set(0, "@field", { link = "Identifier" })
set(0, "@property", { link = "Identifier" })
set(0, "@parameter", { link = "Identifier" })
set(0, "@field", { link = "Normal" })
set(0, "@property", { link = "Normal" })
set(0, "@parameter", { link = "Normal" })

-- LSP
set(0, "@lsp.type.struct", { fg = colors.struct })
set(0, "@lsp.type.variable", { link = "Identifier" })
set(0, "@lsp.type.method", { fg = colors.text })
set(0, "@lsp.type.property", { fg = colors.text })
set(0, "@lsp.type.type", { fg = colors.constant })
set(0, "@lsp.type.typeAlias", { fg = colors.constant })
set(0, "@lsp.type.typeParameter", { fg = colors.constant })
set(0, "@lsp.type.selfTypeKeyword", { fg = colors.constant })
set(0, "@lsp.typemod.selfKeyword", { fg = colors.white })
set(0, "@lsp.typemod.interface", { fg = colors.struct })
set(0, "@lsp.typemod.function", { fg = colors.text })
set(0, "@lsp.typemod.function.declaration", { link = "Function" })
set(0, "@lsp.typemod.operator.controlFlow", { link = "Keyword" })
-- set(0, "@lsp.typemod.method", { fg = colors.text })
-- set(0, "@lsp.typemod.variable", { fg = colors.white })

set(0, "NormalNC", { bg = colors.bg })
set(0, "NormalFloat", { bg = colors.bg, fg = colors.fg })
set(0, "FloatBorder", { bg = colors.bg, fg = colors.fg })
set(0, "Pmenu", { bg = colors.bg })
set(0, "Terminal", { bg = colors.bg })
set(0, "EndOfBuffer", { bg = colors.bg })
set(0, "FoldColumn", { bg = colors.bg })
set(0, "Folded", { bg = colors.bg })
set(0, "SignColumn", { bg = colors.bg })
set(0, "WhichKeyFloat", { bg = colors.bg })

-- Telescope
set(0, "TelescopeNormal", { bg = colors.bg, fg = colors.bg })
set(0, "TelescopeBorder", { bg = colors.bg, fg = colors.bg })
set(0, "TelescopePromptTitle", { bg = colors.bg })
set(0, "TelescopePromptBorder", { bg = colors.bg, fg = colors.bg })
set(0, "TelescopeResultsBorder", { bg = colors.bg, fg = colors.bg })
set(0, "TelescopePreviewBorder", { bg = colors.bg, fg = colors.bg })

-- Neotree
set(0, "NeoTreeNormal", { bg = colors.bg })
set(0, "NeoTreeNormalNC", { bg = colors.bg })
set(0, "NeoTreeVertSplit", { bg = colors.bg })
set(0, "NeoTreeWinSeparator", { bg = colors.bg })
set(0, "NeoTreeEndOfBuffer", { bg = colors.bg })

-- Notify
set(0, "NotifyINFOBody", { bg = colors.bg })
set(0, "NotifyERRORBody", { bg = colors.bg })
set(0, "NotifyWARNBody", { bg = colors.bg })
set(0, "NotifyTRACEBody", { bg = colors.bg })
set(0, "NotifyDEBUGBody", { bg = colors.bg })
set(0, "NotifyINFOTitle", { bg = colors.bg })
set(0, "NotifyERRORTitle", { bg = colors.bg })
set(0, "NotifyWARNTitle", { bg = colors.bg })
set(0, "NotifyTRACETitle", { bg = colors.bg })
set(0, "NotifyDEBUGTitle", { bg = colors.bg })
set(0, "NotifyINFOBorder", { bg = colors.bg })
set(0, "NotifyERRORBorder", { bg = colors.bg })
set(0, "NotifyWARNBorder", { bg = colors.bg })
set(0, "NotifyTRACEBorder", { bg = colors.bg })
set(0, "NotifyDEBUGBorder", { bg = colors.bg })

set(0, "TabLine", { bg = colors.bg, fg = "#6c6c6c" })
set(0, "TabLineSel", { bg = colors.bg, fg = colors.fg })
set(0, "TabLineFill", { bg = colors.bg })

set(0, "LspInlayHint", { fg = "#808080", bg = "#2D2D2D" })

-- Bufferline
local function set_buffer_line()
  for name, _ in pairs(vim.api.nvim_get_hl(0, {})) do
    if name:match("^BufferLine") then
      local hl = vim.api.nvim_get_hl(0, { name = name })
      local cur_bg = name:match("Selected$") and colors.bg or "#272727"
      local cur_fg = name:match("Selected$") and colors.white or "#E0E0E0"

      vim.api.nvim_set_hl(0, name, {
        fg = name:match("^BufferLineDevIcon") and hl.fg or cur_fg,
        bg = cur_bg,
        bold = hl.bold,
      })
    end
  end
end

vim.api.nvim_create_autocmd({ "ColorScheme", "BufEnter", "BufAdd", "BufWinEnter" }, {
  callback = function()
    vim.schedule(set_buffer_line)
  end,
})

-- Lualine
local custom = require("lualine.themes.auto")

local modes = {
  "normal",
  "insert",
  "visual",
  "replace",
  "command",
  "inactive",
}
local sections = {
  -- "a",
  "b",
  "c",
  "x",
  "y",
  -- "z",
}

for _, mode in ipairs(modes) do
  for _, section in ipairs(sections) do
    if custom[mode] and custom[mode][section] then
      custom[mode][section].bg = colors.bg
      custom[mode][section].fg = colors.white
    end
  end
end

custom["normal"]["a"].bg = "#FFFFFF"
for _, mode in ipairs(modes) do
  if custom[mode] and custom[mode]["a"] then
    custom[mode]["a"].fg = "#000000"
  end
end

require("lualine").setup({
  options = { theme = custom },
})

return colors
