require("colorbuddy").colorscheme("gruvbuddy")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("white", "#d0b892")
Color.new("red", "#F05E48")
Color.new("pink", "#fef601")
Color.new("green", "#53d549")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2be")
Color.new("aqua", "#87ffde")
Color.new("cyan", "#55FFFF")
Color.new("purple", "#ffa500")
Color.new("violet", "#8cde94")
Color.new("orange", "#ffa500")
Color.new("brown", "#a3685a")

Color.new("seagreen", "#8cde94")
Color.new("string", "#3ad0b5")
Color.new("selection", "#0000ff")
Color.new("line_fg", "#126367")

local background_string = "#1A1A1A"
Color.new("background", background_string)
Color.new("gray0", background_string)

Group.new("Normal", c.superwhite, c.gray0)
Group.new("Visual", nil, c.selection)
Group.new("Keyword", c.red, nil)
Group.new("Number", c.aqua, nil)
Group.new("MatchParen", nil, c.selection)
Group.new("Pmenu", nil, c.background)
Group.new("PmenuSel", nil, c.selection)
Group.new("Search", c.orange, c.selection)

Group.new("StatusLine", nil, c.background)
Group.new("StatusLineNC", nil, c.background)

Group.new("@comment", c.green, nil, s.none)
Group.new("@constant", c.orange, nil, s.none)
Group.new("@constant.builtin", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.red, nil, s.none)
-- Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@number", c.aqua, nil, s.none)
Group.new("@module", c.seagreen, nil, s.none)
Group.new("@string", c.string, nil, s.none)
Group.new("@property", c.white)
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.seagreen, g.Normal)

Group.new("@lsp.type.enumMember", c.aqua, g.Normal)
Group.new("@lsp.type.builtin", c.orange, g.Normal)

-- Lualine
local custom = require("lualine.themes.auto")

local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
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
      custom[mode][section].bg = "#111111"
      custom[mode][section].fg = "#FFFFFF"
    end
  end
end

custom["normal"]["a"].bg = "#FFFFFF"
for _, mode in ipairs(modes) do
  if custom[mode] and custom[mode]["a"] then
    custom[mode]["a"].fg = "#111111"
  end
end

require("lualine").setup({ options = { theme = custom } })
--
-- return colors
