return {
  'NickvanDyke/opencode.nvim',
  dependencies = {
    -- Recommended for `ask()`, and required for `toggle()` — otherwise optional
    { 'folke/snacks.nvim', opts = { input = { enabled = true } } },
  },
  config = function()
    vim.g.opencode_opts = {
      -- Your configuration, if any — see `lua/opencode/config.lua`
    }

    -- Required for `opts.auto_reload`
    vim.opt.autoread = true

    -- Recommended/example keymaps
    vim.keymap.set('n', ',t', function() require('opencode').toggle() end, { desc = 'Toggle embedded' })
    vim.keymap.set('n', ',a', function() require('opencode').ask '@cursor: ' end, { desc = 'Ask about this' })
    vim.keymap.set('v', ',a', function() require('opencode').ask '@selection: ' end, { desc = 'Ask about selection' })
    vim.keymap.set('n', ',e', function() require('opencode').prompt 'Explain @cursor and its context' end, { desc = 'Explain this code' })
    vim.keymap.set('n', ',n', function() require('opencode').command 'session_new' end, { desc = 'New session' })
    vim.keymap.set({ 'n', 'v' }, ',s', function() require('opencode').select() end, { desc = 'Select prompt' })
  end,
}
