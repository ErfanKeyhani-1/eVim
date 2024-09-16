-- treesitter.lua
local ts_configs = require('nvim-treesitter.configs')

ts_configs.setup {
  ensure_installed = { "c", "lua", "python", "javascript" }, -- add more languages if needed
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}

