local set = vim.keymap.set
local k = vim.keycode
local f = require("custom.f")
local fn = f.fn

set("n", ",x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", ",,x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- Toggle hlsearch if it's on, otherwise just do "enter"
set("n", "<CR>", function()
  ---@diagnostic disable-next-line: undefined-field
  if vim.v.hlsearch == 1 then
    vim.cmd.nohl()
    return ""
  else
    return k("<CR>")
  end
end, { expr = true })

-- There are builtin keymaps for this now, but I like that it shows
-- the float when I navigate to the error - so I override them.
set("n", "]d", fn(vim.diagnostic.jump, { count = 1, float = true }))
set("n", "[d", fn(vim.diagnostic.jump, { count = -1, float = true }))

set("n", "<M-j>", function()
  if vim.opt.diff:get() then
    vim.cmd([[normal! ]c]])
  else
    vim.cmd([[m .+1<CR>==]])
  end
end)

set("n", "<M-k>", function()
  if vim.opt.diff:get() then
    vim.cmd([[normal! [c]])
  else
    vim.cmd([[m .-2<CR>==]])
  end
end)

set("n", "<leader>tt", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end, { desc = "Inlay Hints" })

vim.api.nvim_set_keymap(
  "n",
  "<leader>t",
  "<Plug>PlenaryTestFile",
  { noremap = false, silent = false, desc = "Test Files" }
)

set("n", "j", function(...)
  local count = vim.v.count

  if count == 0 then
    return "gj"
  else
    return "j"
  end
end, { expr = true })

set("n", "k", function(...)
  local count = vim.v.count

  if count == 0 then
    return "gk"
  else
    return "k"
  end
end, { expr = true })

vim.keymap.set("n", "]]", "<cmd>cnext<CR>", { silent = true })
vim.keymap.set("n", "[[", "<cmd>cprev<CR>", { silent = true })

vim.keymap.set("n", "<leader>ad", "<CMD>Glance definitions<CR>", { desc = "Glance Definitions" })
vim.keymap.set("n", "<leader>ar", "<CMD>Glance references<CR>", { desc = "Glance References" })
vim.keymap.set("n", "<leader>ay", "<CMD>Glance type_definitions<CR>", { desc = "Glance Type Definitions" })
vim.keymap.set("n", "<leader>am", "<CMD>Glance implementations<CR>", { desc = "Glance Implementations" })
