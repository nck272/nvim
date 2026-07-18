local set = vim.opt_local

set.expandtab = false
set.tabstop = 4
set.shiftwidth = 4

local run_file = function()
  local file = vim.fn.expand("%:t")
  return string.format("<cmd> zig run %s<CR>", file)
end

vim.keymap.set("n", ",,x", function()
  vim.cmd.new()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 30)
  vim.wo.winfixheight = true
  vim.cmd.term()

  local job_id = vim.bo.channel
  vim.fn.chansend(job_id, "zig build run\r")
end, { desc = "Execute the current file" })
