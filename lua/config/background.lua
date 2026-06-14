local M = {}

M.set_buffer_line = function()
  local function set()
    for name, _ in pairs(vim.api.nvim_get_hl(0, {})) do
      if name:match("^BufferLine") then
        local hl = vim.api.nvim_get_hl(0, { name = name })
        local cur_bg = name:match("Selected$") and "#111111" or "#272727"
        local cur_fg = name:match("Selected$") and "#FFFFFF" or "#E0E0E0"

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
      vim.schedule(set)
    end,
  })
end
M.set_lualine = function(theme, bg, fg)
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
        custom[mode][section].bg = bg
        custom[mode][section].fg = fg
      end
    end
  end

  require("lualine").setup({
    options = { theme = custom },
  })
end

M.set = function(bg, fg)
  vim.api.nvim_set_hl(0, "Normal", { bg = bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg, fg = fg })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = bg, fg = fg })
  vim.api.nvim_set_hl(0, "Pmenu", { bg = bg })
  vim.api.nvim_set_hl(0, "Terminal", { bg = bg })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = bg })
  vim.api.nvim_set_hl(0, "FoldColumn", { bg = bg })
  vim.api.nvim_set_hl(0, "Folded", { bg = bg })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = bg })
  vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = bg })
  vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = bg, fg = bg })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = bg, fg = bg })
  vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = bg })
  vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = bg, fg = bg })
  vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = bg, fg = bg })
  vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = bg, fg = bg })

  vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = bg })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = bg })
  vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { bg = bg })
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = bg })
  vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = bg })

  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg })
  vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = bg })
  vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = bg })

  vim.api.nvim_set_hl(0, "NotifyINFOBody", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyWARNBody", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyINFOTitle", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyERRORTitle", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyWARNTitle", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyTRACETitle", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyINFOBorder", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyERRORBorder", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyWARNBorder", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = bg })
  vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = bg })

  vim.api.nvim_set_hl(0, "LineNr", { bg = bg })
  vim.api.nvim_set_hl(0, "CursorLineNr", { bg = bg })

  vim.api.nvim_set_hl(0, "StatusLine", { bg = bg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = bg })

  vim.api.nvim_set_hl(0, "TabLine", { bg = bg, fg = "#6c6c6c" })
  vim.api.nvim_set_hl(0, "TabLineSel", { bg = bg, fg = fg })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = bg })

  vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#808080", bg = "#2D2D2D" })
end

return M
