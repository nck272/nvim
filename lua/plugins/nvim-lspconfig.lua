local lsp = require("custom.lsp")

return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      "mason.nvim",
      { "mason-org/mason-lspconfig.nvim", config = function() end },
      {
        "dmmulroy/tsc.nvim",
        config = function()
          require("tsc").setup {
            run_as_monorepo = true,
          }
        end,
      },
      {
        "pmizio/typescript-tools.nvim",
        dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
      },
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
        },
        setup = {},

      }
      return ret
    end,
    config = vim.schedule_wrap(function(_, opts)
      lsp.setup(opts)
      require("typescript-tools").setup {
        settings = {
          separate_diagnostic_server = true,
          publish_diagnostic_on = "insert_leave",
          jsx_close_tag = {
            enable = true,
            filetypes = { "javascriptreact", "typescriptreact" },
          },
          tsserver_file_preferences = {
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = true,
            includeInlayVariableTypeHints = true,
            includeInlayVariableTypeHintsWhenTypeMatchesName = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayEnumMemberValueHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            -- Enable auto imports
            includeCompletionsForModuleExports = true,
            includeCompletionsForImportStatements = true,
          },

          tsserver_format_options = {
            insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = true,
            semicolons = "insert",
          },
          complete_function_calls = true,
          include_completions_with_insert_text = true,
          code_lens = "off",
          disable_member_code_lens = true,
          tsserver_max_memory = 12288,
        },
      }
    end),
  }
}
