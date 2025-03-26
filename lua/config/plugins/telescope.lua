return {
  {
    'nvim-telescope/telescope.nvim',
    requires = {
      'BurntSushi/ripgrep',
      'sharkdp/fd',
      'nvim-treesitter/nvim-treesitter'
    },
    config = function()
      require('telescope').setup({
        defaults = {
          mappings = {}
          },
          pickers = {},
          extensions = {}
      })
  
      local tele_builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', tele_builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', tele_builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', tele_builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', tele_builtin.help_tags, { desc = 'Telescope help tags' })
    end
  }
}