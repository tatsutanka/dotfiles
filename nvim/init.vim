"
" ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
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
" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'
"Making good for the eyes
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim'
"auto-complete and config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
" Nerd Tree sxplorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

"========================================================================Vim-config
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/general/paths.vim
source $HOME/dotfiles/nvim/general/functions.vim
source $HOME/dotfiles/nvim/plug-config/skin.vim
"========================================================================Plugins
source $HOME/dotfiles/nvim/plug-config/lsp-config.vim
luafile $HOME/dotfiles/nvim/plug-config/compe-config.lua
"========================================================================LSP
luafile $HOME/dotfiles/nvim/Lsp/python-lsp.lua
luafile $HOME/dotfiles/nvim/Lsp/bash-lsp.lua
luafile $HOME/dotfiles/nvim/Lsp/c-lsp.lua

"========================================================================Others
let mapleader = " "
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

