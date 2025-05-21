return {
  {
    'brianhuster/live-preview.nvim',
    dependencies = {
      -- You can choose one of the following pickers
      'nvim-telescope/telescope.nvim',
      -- 'ibhagwan/fzf-lua',
      -- 'echasnovski/mini.pick',
    },
    require('livepreview.config').set {
      browser = 'firefox',
      dynamic_root = false,
    },
  },
}
