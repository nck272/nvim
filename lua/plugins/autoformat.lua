return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>cF",
        function()
          require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
        end,
        mode = { "n", "x" },
        desc = "Format Injected Langs",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        go = { "goimports", "gofmt" },
        ocaml = { "ocamlformat" }
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_format = "fallback",
      -- },
    },
  }
}
