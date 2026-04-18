return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod" },
    {
      "kristijanhusak/vim-dadbod-completion",
      ft = { "sql", "mysql", "plsql" },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, { name = "vim-dadbod-completion" })
    end,
  },
}
