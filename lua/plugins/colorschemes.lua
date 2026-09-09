return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "tjdevries/colorbuddy.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "tjdevries/gruvbuddy.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
  },
  {
    "navarasu/onedark.nvim",
    version = "v0.1.0",
    lazy = false,
    priority = 1000,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
  },
  {
    "JCodV/autumn_night.nvim",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "RostislavArts/naysayer.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "metalelf0/kintsugi-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kintsugi").setup({
        variant = "dark", -- "dark" | "flared"
        transparent = false,
        terminal_colors = true,
        bold_keywords = true,
        italic_comments = false,
      })
    end,
  },
}
