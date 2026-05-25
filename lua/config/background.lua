local M = {}

local fg = "#d1b897"

M.set_lualine = function(theme, color)
  local custom = require(string.format("lualine.themes.%s", theme))

  local modes = {
    "normal",
    -- "insert",
    -- "visual",
    -- "replace",
    -- "command",
    -- "inactive"
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
        custom[mode][section].bg = color
      end
    end
  end

  require("lualine").setup({
    options = { theme = custom },
  })
end

M.set = function(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = color })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = color, fg = fg })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = color, fg = fg })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = color })
  vim.api.nvim_set_hl(0, "Terminal", { bg = color })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = color })
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = color })
  vim.api.nvim_set_hl(0, "Folded", { bg = color })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = color })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = color })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = color })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = color, fg = color })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = color, fg = color })
  vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = color })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = color, fg = color })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = color, fg = color })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = color, fg = color })

  vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = color })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = color })
  vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = color })
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = color })
  vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = color })

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = color })
  vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = color })
  vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = color })

  vim.api.nvim_set_hl(0, "NotifyINFOBody", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyWARNBody", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyINFOTitle", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyERRORTitle", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyWARNTitle", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyTRACETitle", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyINFOBorder", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyERRORBorder", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyWARNBorder", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = color })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = color })

  vim.api.nvim_set_hl(0, "LineNr", { bg = color })
  vim.api.nvim_set_hl(0, "CursorLineNr", { bg = color })

  vim.api.nvim_set_hl(0, "StatusLine", { bg = color })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = color })

  vim.api.nvim_set_hl(0, "TabLine", { bg = color, fg = "#6c6c6c" })
  vim.api.nvim_set_hl(0, "TabLineSel", { bg = color, fg = fg })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = color })
end

return M
