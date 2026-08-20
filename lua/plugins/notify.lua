return {
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        border = "single",
        background_colour = "#000000",
        on_open = function(win)
          local buf = vim.api.nvim_win_get_buf(win)
          local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
          local msg = table.concat(lines, " ")

          -- Check for the specific ripgrep error message
          if msg:match("rg %-%-files") then
            vim.api.nvim_win_close(win, true)
          end
        end,
      })
      vim.notify = require("notify")
    end,
  },
}
