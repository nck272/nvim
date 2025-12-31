return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = "auto",
                component_separators = "",
                section_separators = "",
                globalstatus = false,
                always_divide_middle = true,
            },
            sections = {
                lualine_a = {
                    {
                        "mode",
                        fmt = function(s)
                            return "[" .. s .. "]"
                        end,
                    },
                },

                lualine_b = {},
                lualine_c = {
                    "%=",
                    {
                        "filename",
                        path = 3,
                    },
                },
                lualine_x = {},
                lualine_y = {
                    {
                        "filetype",
                        fmt = function(s)
                            return s ~= "" and "[" .. s .. "]" or ""
                        end,
                    },
                    {
                        "location",
                        fmt = function(s)
                            return "[" .. s .. "]"
                        end,
                    },
                },
                lualine_z = {},
            },

            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        })
    end,
}
