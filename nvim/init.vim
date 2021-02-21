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
call plug#begin('~/.vim/plugged')

" comenting
Plug 'tpope/vim-commentary'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Debugging Plugins
Plug 'puremourning/vimspector'

" vim on browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(69) } }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Previwers
Plug 'lervag/vimtex'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

"Making good for the eyes
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'dracula/vim'

" LSP
Plug 'prabirshrestha/vim-lsp' " lsp
Plug 'mattn/vim-lsp-settings' "lsp server install
Plug 'prabirshrestha/asyncomplete.vim' "async completio
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" snippets
Plug 'SirVer/ultisnips'
Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'

call plug#end()

"========================================================================Vim-config
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/general/paths.vim
source $HOME/dotfiles/nvim/general/functions.vim
"========================================================================Plugins
"===========================================Plugins
source $HOME/dotfiles/nvim/plug-config/fugitive.vim
source $HOME/dotfiles/nvim/plug-config/netrw.vim
source $HOME/dotfiles/nvim/plug-config/lsp.vim
source $HOME/dotfiles/nvim/plug-config/fzf.vim
source $HOME/dotfiles/nvim/plug-config/previwer.vim
source $HOME/dotfiles/nvim/plug-config/skin.vim

" source $HOME/dotfiles/nvim/plug-config/comentary.vim
" source $HOME/dotfiles/nvim/Plug-config/vimspector.vim

"========================================================================Keys

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
