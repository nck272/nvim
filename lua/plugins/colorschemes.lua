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
    opts = {
      style = "moon",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "f4z3r/gruvbox-material.nvim",
    name = "gruvbox-material",
    lazy = false,
    priority = 1000,
    opts = {
      italic = false,
      contrast = "hard",
      comments = { italics = false },
      background = { transparent = true },
      float = {
        force_background = false,
        background_color = nil,
      },
      signs = {
        force_background = false,
        background_color = nil,
      },
      customize = nil,
    },
  },
  {
    "armannikoyan/rusty",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      italic_comments = true,
      underline_current_line = true,
      -- colors = {
      --   foreground = "#c5c8c6",
      --   background = "#1d1f21",
      --   selection = "#373b41",
      --   line = "#282a2e",
      --   comment = "#969896",
      --   red = "#cc6666",
      --   orange = "#de935f",
      --   yellow = "#f0c674",
      --   green = "#b5bd68",
      --   aqua = "#8abeb7",
      --   blue = "#81a2be",
      --   purple = "#b294bb",
      --   window = "#4d5057",
      -- },
    },
  },
}
