-- nvim_tree.lua


--logos n' shi'
require'nvim-tree'.setup {
  renderer = {
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        folder = {
          arrow_open = '',
          arrow_closed = '',
          default = '',
          open = '',
          empty = '',
          empty_open = '',
          symlink = '',
          symlink_open = '',
        },
      },
    },
  },
}

vim.keymap.set('n', '<C-e>', require('nvim-tree.api').tree.toggle, { silent = true })
