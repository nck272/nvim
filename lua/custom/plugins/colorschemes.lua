return {
  {
    'tjdevries/colorbuddy.nvim',
  },
  {
    "tjdevries/gruvbuddy.nvim",
    config = function()
      require('colorbuddy').setup {
        vim.cmd.colorscheme 'gruvbuddy',
      }
    end,
  }
}
