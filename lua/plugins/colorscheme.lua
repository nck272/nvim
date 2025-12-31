local scheme = "tokyonight"
return {
    { "tjdevries/colorbuddy.nvim" },
    {
        "tjdevries/gruvbuddy.nvim",
        config = function()
            vim.cmd.colorscheme(scheme)
        end,
    },
    { "folke/tokyonight.nvim" },
    { "rose-pine/neovim" },
    { "Mofiqul/dracula.nvim" },
    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({
                style = "darker",
            })
        end,
    },
    { "ribru17/bamboo.nvim" },
    { "catppuccin/nvim" },
    { "savq/melange-nvim" },
    { "ramojus/mellifluous.nvim" },
    { "blazkowolf/gruber-darker.nvim" },
    { "aliqyan-21/darkvoid.nvim" },
    { "ficcdaf/ashen.nvim" },
    { "https://gitlab.com/motaz-shokry/gruvbox.nvim" },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = scheme,
        },
        -- Do not add config here, it will override all lazy plugins
    },
}
