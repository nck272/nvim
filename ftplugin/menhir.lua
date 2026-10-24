local set = vim.opt_local

set.shiftwidth = 2
set.tabstop = 2

vim.lsp.config("menhir_lsp", {
  cmd = { "menhir-lsp" },
  filetypes = { "menhir" },
  root_markers = { "dune-project", ".git" },
})

vim.lsp.enable("menhir_lsp")
