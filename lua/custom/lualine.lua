local custom_theme = require("lualine.themes.auto")
local colors = require("custom.colors")

custom_theme.normal.a.bg = colors.purple
custom_theme.normal.a.fg = colors.bg
custom_theme.insert.a.bg = colors.cyan
custom_theme.insert.a.fg = colors.bg
custom_theme.visual.a.bg = colors.orange
custom_theme.visual.a.fg = colors.bg
custom_theme.replace.a.bg = colors.red
custom_theme.replace.a.fg = colors.bg
custom_theme.command.a.bg = colors.blue
custom_theme.command.a.fg = colors.bg

custom_theme.normal.b.bg = colors.black_light
custom_theme.normal.b.fg = colors.fg
custom_theme.insert.b.bg = colors.black_light
custom_theme.insert.b.fg = colors.fg
custom_theme.visual.b.bg = colors.black_light
custom_theme.visual.b.fg = colors.fg
custom_theme.replace.b.bg = colors.black_light
custom_theme.replace.b.fg = colors.fg
custom_theme.command.b.bg = colors.black_light
custom_theme.command.b.fg = colors.fg

custom_theme.normal.c.bg = colors.black
custom_theme.normal.c.fg = colors.fg
custom_theme.insert.c.bg = colors.black
custom_theme.insert.c.fg = colors.fg
custom_theme.visual.c.bg = colors.black
custom_theme.visual.c.fg = colors.fg
custom_theme.replace.c.bg = colors.black
custom_theme.replace.c.fg = colors.fg
custom_theme.command.c.bg = colors.black
custom_theme.command.c.fg = colors.fg

return custom_theme
