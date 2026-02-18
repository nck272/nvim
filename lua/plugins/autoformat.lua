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
    init = function()
      LazyVim.on_very_lazy(function()
        LazyVim.format.register({
          name = "conform.nvim",
          priority = 100,
          primary = true,
          format = function(buf)
            require("conform").format({ bufnr = buf })
          end,
          sources = function(buf)
            local ret = require("conform").list_formatters(buf)
            ---@param v conform.FormatterInfo
            return vim.tbl_map(function(v)
              return v.name
            end, ret)
          end,
        })
      end)
    end,
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
        lua = { "stylua" },
        xml = { "xmlformatter" },
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        ocaml = { "ml-format" },
        react = { "prettier" },
        python = { "black" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
      },
      default_format_opts = {
        timeout_ms = 3000,
        async = false,           -- not recommended to change
        quiet = false,           -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      formatters = {
        ["ml-format"] = {
          command = "ocamlformat",
          args = {
            "--enable-outside-detected-project",
            "--profile=janestreet",
            "--margin=80",
            "--name",
            "$FILENAME",
            "-",
          },
        },
        injected = {
          options = {
            ignore_errors = true,
            lang_to_formatters = {
              sql = { "sleek" },
            },
          },
        },
      },
    },
  },
}
