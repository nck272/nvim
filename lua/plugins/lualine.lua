return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts = vim.tbl_extend("force", opts or {}, {
      options = {
        theme = require("custom.lualine"),
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })

    table.insert(opts.sections.lualine_x, { "encoding" })

    return opts
  end,
}
