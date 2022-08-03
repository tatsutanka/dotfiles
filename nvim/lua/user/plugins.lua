local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)

use "wbthomason/packer.nvim"

-- ================Visual
-- "Making good for the eyes
use 'itchyny/lightline.vim'
use 'Yggdroot/indentLine'
use 'ghifarit53/tokyonight-vim'

-- " Treesitter
use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
use  'p00f/nvim-ts-rainbow'

-- "================Prog
-- " Lsp
use 'neovim/nvim-lspconfig'
use 'williamboman/nvim-lsp-installer'
use 'glepnir/lspsaga.nvim'
use 'kosayoda/nvim-lightbulb'
-- " debugiing
use 'mfussenegger/nvim-dap'
-- " Autocomplete
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use "hrsh7th/cmp-buffer" -- buffer completions
use "hrsh7th/cmp-path" -- path completions
use "hrsh7th/cmp-cmdline" -- cmdline completions
-- snippets
use "L3MON4D3/LuaSnip" --snippet engine
use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
use "saadparwaiz1/cmp_luasnip" -- snippet completions
-- " Telescope
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'
-- "general
use 'windwp/nvim-autopairs'
use 'tpope/vim-commentary'
use 'vimlab/split-term.vim'
-- "================Note_taking
-- " note taking
use 'vimwiki/vimwiki'
use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
