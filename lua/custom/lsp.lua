local M = {}

M.setup = function(opts)
  -- setup autoformat
  LazyVim.format.register(LazyVim.lsp.formatter())

  -- setup keymaps
  for server, server_opts in pairs(opts.servers) do
    if type(server_opts) == "table" and server_opts.keys then
      require("lazyvim.plugins.lsp.keymaps").set({ name = server ~= "*" and server or nil }, server_opts.keys)
    end
  end

  if opts.capabilities then
    LazyVim.deprecate("lsp-config.opts.capabilities", "Use lsp-config.opts.servers['*'].capabilities instead")
    opts.servers["*"] = vim.tbl_deep_extend("force", opts.servers["*"] or {}, {
      capabilities = opts.capabilities,
    })
  end

  if opts.servers["*"] then
    vim.lsp.config("*", opts.servers["*"])
  end

  -- get all the servers that are available through mason-lspconfig
  local have_mason = LazyVim.has("mason-lspconfig.nvim")
  local mason_all = have_mason
      and vim.tbl_keys(require("mason-lspconfig.mappings").get_mason_map().lspconfig_to_package)
      or {} --[[ @as string[] ]]
  local mason_exclude = {} ---@type string[]

  ---@return boolean? exclude automatic setup
  local function configure(server)
    if server == "*" then
      return false
    end
    local sopts = opts.servers[server]
    sopts = sopts == true and {} or (not sopts) and { enabled = false } or sopts --[[@as lazyvim.lsp.Config]]

    if sopts.enabled == false then
      mason_exclude[#mason_exclude + 1] = server
      return
    end

    local use_mason = sopts.mason ~= false and vim.tbl_contains(mason_all, server)
    local setup = opts.setup[server] or opts.setup["*"]
    if setup and setup(server, sopts) then
      mason_exclude[#mason_exclude + 1] = server
    else
      vim.lsp.config(server, sopts)     -- configure the server
      if not use_mason then
        vim.lsp.enable(server)
      end
    end
    return use_mason
  end

  local install = vim.tbl_filter(configure, vim.tbl_keys(opts.servers))
  if have_mason then
    require("mason-lspconfig").setup({
      ensure_installed = vim.list_extend(install, LazyVim.opts("mason-lspconfig.nvim").ensure_installed or {}),
      automatic_enable = { exclude = mason_exclude },
    })
  end

  vim.diagnostic.config { virtual_text = true, virtual_lines = false }
end

M.keys = {
  { "<leader>cl", function() Snacks.picker.lsp_config() end,          desc = "Lsp Info" },
  { "gd",         vim.lsp.buf.definition,                             desc = "Goto Definition",            has = "definition" },
  { "gr",         vim.lsp.buf.references,                             desc = "References",                 nowait = true },
  { "gI",         vim.lsp.buf.implementation,                         desc = "Goto Implementation" },
  { "gy",         vim.lsp.buf.type_definition,                        desc = "Goto T[y]pe Definition" },
  { "gD",         vim.lsp.buf.declaration,                            desc = "Goto Declaration" },
  { "K",          function() return vim.lsp.buf.hover() end,          desc = "Hover" },
  { "gK",         function() return vim.lsp.buf.signature_help() end, desc = "Signature Help",             has = "signatureHelp" },
  { "<c-k>",      function() return vim.lsp.buf.signature_help() end, mode = "i",                          desc = "Signature Help", has = "signatureHelp" },
  { "<leader>ca", vim.lsp.buf.code_action,                            desc = "Code Action",                mode = { "n", "x" },     has = "codeAction" },
  { "<leader>cc", vim.lsp.codelens.run,                               desc = "Run Codelens",               mode = { "n", "x" },     has = "codeLens" },
  { "<leader>cC", vim.lsp.codelens.refresh,                           desc = "Refresh & Display Codelens", mode = { "n" },          has = "codeLens" },
  { "<leader>cR", function() Snacks.rename.rename_file() end,         desc = "Rename File",                mode = { "n" },          has = { "workspace/didRenameFiles", "workspace/willRenameFiles" } },
  { "<leader>cr", vim.lsp.buf.rename,                                 desc = "Rename",                     has = "rename" },
  { "<leader>cA", LazyVim.lsp.action.source,                          desc = "Source Action",              has = "codeAction" },
  {
    "]]",
    function() Snacks.words.jump(vim.v.count1) end,
    has = "documentHighlight",
    desc = "Next Reference",
    enabled = function() return Snacks.words.is_enabled() end
  },
  {
    "[[",
    function() Snacks.words.jump(-vim.v.count1) end,
    has = "documentHighlight",
    desc = "Prev Reference",
    enabled = function() return Snacks.words.is_enabled() end
  },
  {
    "<a-n>",
    function() Snacks.words.jump(vim.v.count1, true) end,
    has = "documentHighlight",
    desc = "Next Reference",
    enabled = function() return Snacks.words.is_enabled() end
  },
  {
    "<a-p>",
    function() Snacks.words.jump(-vim.v.count1, true) end,
    has = "documentHighlight",
    desc = "Prev Reference",
    enabled = function() return Snacks.words.is_enabled() end
  },
}

return M
