local set = vim.keymap.set

set("n", ",x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", ",,x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- Easily hit escape in terminal mode.
set("t", "<esc><esc>", "<c-\\><c-n>")

-- Open a terminal at the bottom of the screen with a fixed height.
set("n", "<leader>tv", function()
    vim.cmd.new()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 12)
    vim.wo.winfixheight = true
    vim.cmd.term()
end)

set("n", "<leader>th", function()
    vim.cmd.vsplit()
    vim.api.nvim_win_set_width(0, 80)
    vim.cmd.term()
end)
