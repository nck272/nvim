return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "classic",
    icons = {
      colors = true,
    },
    spec = {
      { "<leader>o", group = "oil", icon = "󰉖" },
      { "<leader>h", group = "harpoon", icon = "󰛢" },
      { "<leader>t", group = "terminal", icon = "󰞷" },
    },
  },
}
