local opt = vim.opt

opt.inccommand = "split"

opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true
opt.cursorline = false

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"
opt.shada = { "'10", "<0", "s10", "h" }

opt.swapfile = false

opt.formatoptions:remove("o")

opt.wrap = false
opt.linebreak = false
opt.breakindent = false

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

opt.scrolloff = 8
opt.sidescrolloff = 8
opt.cursorline = false

opt.more = false

opt.foldmethod = "manual"

opt.title = true
opt.titlestring = '%t%( %M%)%( (%{expand("%:~:h")})%)%a (nvim)'

opt.undofile = true
opt.updatetime = 250

opt.termguicolors = true

opt.completeopt = {
  "menu",
  "menuone",
  "noselect",
}

opt.wildmenu = true
opt.wildmode = "longest:full,full"

opt.showcmd = true

opt.clipboard = "unnamedplus"
opt.winbar = "%f"

vim.api.nvim_create_user_command("Unique", function()
  local start_line = vim.fn.getpos("'<")[2]
  local end_line = vim.fn.getpos("'>")[2]

  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

  local seen = {}
  local uniq = {}
  for _, l in ipairs(lines) do
    if not seen[l] then
      seen[l] = true
      table.insert(uniq, l)
    end
  end

  vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, uniq)
end, { range = true })
