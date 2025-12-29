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
        },
    },
    init = function()
        vim.api.nvim_set_hl(0, "WhichKeyIcon", { underline = false, bold = false })
        vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "NONE" })
    end,
}
