return {
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
      require('nvim-tree').setup({
        view = {
          width = 30,
          side = 'left',
        },
        filters = {
          dotfiles = false,
					git_ignored = false,
        },
        git = {
          enable = true,
        },
      })

      vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>h', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
    end
  }
}
