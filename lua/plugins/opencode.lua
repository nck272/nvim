return {
  {
    "NickvanDyke/opencode.nvim",
    dependencies = {
      -- Recommended for `ask()` and `select()`.
      -- Required for `snacks` provider.
      ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
      { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {}

      -- Required for `opts.events.reload`.
      vim.o.autoread = true

      vim.keymap.set({ "n", "x" }, ",a", require("opencode").ask, { desc = "Ask opencode…" })
      vim.keymap.set({ "n", "x" }, ",x", require("opencode").select, { desc = "Execute opencode action…" })
      vim.keymap.set({ "n", "t" }, ",.", require("opencode").toggle, { desc = "Toggle opencode" })
    end,
  },
}
