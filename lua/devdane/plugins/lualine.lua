return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = "dracula",
    options = {
      disabled_filetypes = {
        "neo-tree",
      },
    },
  }
}
