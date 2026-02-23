local lsp = require("custom.lsp")
local vtsls = require("custom.vtsls")

return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      "mason.nvim",
      { "mason-org/mason-lspconfig.nvim", config = function() end },
      "b0o/SchemaStore.nvim",
    },
    opts_extend = { "servers.*.keys" },
    opts = function()
      local ret = {
        servers = {
          ["*"] = {
            capabilities = {
              workspace = {
                fileOperations = {
                  didRename = true,
                  willRename = true,
                },
              },
            },
            keys = lsp.keys,
          },
          lua_ls = {
            cmd = { "lua-language-server" },
          },
          tsserver = { enabled = false },
          ts_ls = { enabled = false },
          vue_ls = {},
          vtsls = vtsls.opt,
        },
        setup = {
          tsserver = function()
            return true
          end,
          ts_ls = function()
            return true
          end,
          vtsls = function(_, opts)
            vtsls.setup(opts)
          end,
        },
      }
      return ret
    end,
    config = vim.schedule_wrap(function(_, opts)
      lsp.setup(opts)
    end),
  },
}
