return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ribru17/bamboo.nvim",
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
    "bjarneo/aether.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "bjarneo/ethereal.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "bjarneo/hackerman.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },
  {
    "kepano/flexoki-neovim",
    lazy = false,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "hard", -- can be "hard", "soft" or empty string
        palette_overrides = {
          dark0_hard = "#111111",
        },
        overrides = {},
        dim_inactive = false,
        transparent_mode = true,
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "tahayvr/matteblack.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "shaunsingh/nord.nvim",
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
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("onedark").setup({ style = "darker" })
    end,
  },
  {
    "ramojus/mellifluous.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox",
    priority = 1000,
  },
  {
    "ficcdaf/ashen.nvim",
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
    "mcauley-penney/techbase.nvim",
    lazy = false,
    priority = 1000,
  },
}
