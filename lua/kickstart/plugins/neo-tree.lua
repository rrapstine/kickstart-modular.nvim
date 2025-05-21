-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal right<CR>', desc = 'NeoTree reveal right', silent = true },
  },
  opts = {
    reveal = true,
    close_if_last_window = true,
    enable_cursor_hijack = true,
    filesystem = {
      window = {
        position = 'right',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      hijack_netrw_behavior = 'open_current',
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
