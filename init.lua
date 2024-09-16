-- ~/.config/nvim/init.lua

-- ========================
-- Basic Settings
-- ========================

-- Set leader key to space
vim.g.mapleader = ' '

-- Basic Options
vim.o.number = true                    -- Show line numbers
vim.o.relativenumber = true            -- Relative line numbers
vim.o.termguicolors = true             -- Enable true color support
vim.o.cursorline = true                -- Highlight the current line
vim.o.expandtab = true                 -- Use spaces instead of tabs
vim.o.shiftwidth = 4                   -- Number of spaces for indentation
vim.o.tabstop = 4                      -- Number of spaces a tab counts for
vim.o.smartindent = true               -- Enable smart indentation
vim.o.wrap = false                     -- Disable line wrapping
vim.o.swapfile = false                 -- Disable swapfile
vim.o.backup = false                   -- Disable backup
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- Set undo directory
vim.o.undofile = true                  -- Enable persistent undo

-- ========================
-- Plugin Management with Packer
-- ========================

-- Automatically install Packer if not installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git', 'clone', '--depth', '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  print("Installing packer... close and reopen Neovim.")
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand to reload Neovim whenever you save the init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call to require Packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Initialize Packer with a popup window
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})

-- Install your plugins here
packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Gruvbox Theme
  use 'morhetz/gruvbox'

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Treesitter for better syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  }

  -- LSP Configuration
  use 'neovim/nvim-lspconfig'

  -- Autocompletion plugins
  use 'hrsh7th/nvim-cmp'              -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'          -- LSP source for nvim-cmp
  use 'L3MON4D3/LuaSnip'              -- Snippet engine
  use 'saadparwaiz1/cmp_luasnip'      -- Snippet source for nvim-cmp

  -- Autopairs for automatically closing brackets, etc.
  use 'windwp/nvim-autopairs'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Web Dev Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Ensure Packer can manage itself
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

-- ========================
-- Plugin Configurations
-- ========================

-- Load all plugin configurations from the lua/plugins directory
require('plugins.init')

