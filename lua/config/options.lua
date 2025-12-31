local opt = vim.opt

-- Spacing
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

-- Search setting
opt.smartcase = true
opt.ignorecase = true

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.signcolumn = "yes"

-- Enable truecolor support
opt.termguicolors = true

-- This makes nvim use the system clipboard by default for all yanks
opt.clipboard = "unnamedplus"

opt.winbar = "%f %h%w%m%r"

opt.wrap = true
opt.linebreak = true

if vim.fn.has("wsl") == 1 then
    vim.g.clipboard = {
        name = "WslClipboard",
        copy = {
            ["+"] = "clip.exe",
            ["*"] = "clip.exe",
        },
        paste = {
            ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        },
        cache_enabled = 0,
    }
end
