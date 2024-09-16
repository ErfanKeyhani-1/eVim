-- colorscheme.lua

-- Enable true color support
vim.o.termguicolors = true

-- Set Gruvbox options
vim.g.gruvbox_contrast_dark = 'soft' -- Options: 'hard', 'medium', 'soft'
vim.g.gruvbox_palette_overrides = {}
vim.g.gruvbox_invert_selection = '0'

-- Optional: Enable italic comments
vim.g.gruvbox_italic = 1

-- Set the colorscheme
vim.cmd('colorscheme gruvbox')

