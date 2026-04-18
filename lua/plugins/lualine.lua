return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts = vim.tbl_extend("force", opts or {}, {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
    })
    if not vim.g.trouble_lualine then
      opts.sections = opts.sections or {}
      table.insert(opts.sections.lualine_c, { "navic", color_correction = "dynamic" })
    end
    return opts
  end,
}
