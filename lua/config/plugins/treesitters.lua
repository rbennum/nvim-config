return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {'lua', 'python', 'markdown', 'markdown_inline'},
        sync_install = false,
        auto_install = false,
        highlight = { enable = true },
      })
    end
  },
}