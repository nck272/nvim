-- Function to strip italics from all groups
local function no_italics()
  -- Get all highlight groups
  local hl_groups = vim.api.nvim_get_hl(0, {})

  for group_name, hl in pairs(hl_groups) do
    if hl.italic then
      hl.italic = false
      vim.api.nvim_set_hl(0, group_name, hl)
    end
  end
end

-- Run it on startup and whenever the colorscheme changes
vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  callback = function()
    no_italics()
  end,
})

-- Run immediately for the current session
no_italics()
