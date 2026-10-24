vim.filetype.add({
  extension = {
    h = "c",
    scheme = "scheme",
    mll = "ocaml.ocamllex",
    mli = "ocaml.interface",
    mly = "menhir",
  },
})

vim.schedule(function()
  vim.treesitter.language.register("ocaml_interface", "ocaml.interface")
end)
