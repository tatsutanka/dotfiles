"
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███    ███╗
" ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ██║██║ ╚████║██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
" FROM:tatsutanka
" OBJ: nvim config
"
"======================================================================Plugins
call plug#begin('~/dotfiles/nvim/plugged')

" comenting
Plug 'tpope/vim-commentary'

" Git
Plug 'tpope/vim-fugitive'

"Making good for the eyes
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'kosayoda/nvim-lightbulb'
Plug 'kabouzeid/nvim-lspinstall'

" Autocomplete
Plug 'hrsh7th/nvim-compe'
Plug 'mattn/emmet-vim'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'xabikos/vscode-javascript'

"icons
Plug 'kyazdani42/nvim-web-devicons' " for file icons (use in nvim-tree)

" Nerd Tree explorer
Plug 'kyazdani42/nvim-tree.lua'

"Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'p00f/nvim-ts-rainbow'

"general
Plug 'windwp/nvim-autopairs'
call plug#end()

"========================================================================Vim-config
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/general/paths.vim
source $HOME/dotfiles/nvim/general/keys.vim
source $HOME/dotfiles/nvim/general/functions.vim
source $HOME/dotfiles/nvim/plug-config/skin.vim
"========================================================================Plugins
source $HOME/dotfiles/nvim/plug-config/lsp-config.vim
luafile $HOME/dotfiles/nvim/plug-config/compe-config.lua
luafile $HOME/dotfiles/nvim/plug-config/keymappings.lua
luafile $HOME/dotfiles/nvim/plug-config/treesitter.lua
luafile $HOME/dotfiles/nvim/plug-config/telescope.lua
luafile $HOME/dotfiles/nvim/plug-config/explorer.lua
luafile $HOME/dotfiles/nvim/plug-config/autopairs.lua
"========================================================================LSP
luafile $HOME/dotfiles/nvim/Lsp/python-lsp.lua
luafile $HOME/dotfiles/nvim/Lsp/bash-lsp.lua
luafile $HOME/dotfiles/nvim/Lsp/c-lsp.lua

"========================================================================Others
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>r :so $HOME/dotfiles/nvim/init.vim<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
" You can't stop me
cmap w!! w !sudo tee %

" disabling ruby provider
let g:loaded_ruby_provider = 0
