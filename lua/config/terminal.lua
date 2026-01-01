-- Set local settings for terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.scrolloff = 0

    vim.bo.filetype = "terminal"
  end,
})

local set = vim.keymap.set

-- Easily hit escape in terminal mode.
set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Terminal Escape" })

-- Open a terminal at the bottom of the screen with a fixed height.
set("n", "<leader>t_", function()
  vim.cmd.new()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 20)
  vim.wo.winfixheight = true
  vim.cmd.term()
end, { desc = "Terminal Split" })

set("n", "<leader>t|", function()
  vim.cmd.vsplit()
  vim.api.nvim_win_set_width(0, 80)
  vim.cmd.term()
end, { desc = "Terminal VSplit" })
