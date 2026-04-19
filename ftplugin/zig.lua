local set = vim.opt_local

set.expandtab = false
set.tabstop = 4
set.shiftwidth = 4

local run_file = function()
  local file = vim.fn.expand("%:t")
  return string.format("<cmd> zig run %s<CR>", file)
end

vim.keymap.set("n", ",,x", function()
  require("toggleterm").send_command(run_file())
end, { desc = "Execute the current file" })
