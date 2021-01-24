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

"A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" DRACULA theme
Plug 'dracula/vim'

" indent guide
Plug 'Yggdroot/indentLine'

" comenting
Plug 'tpope/vim-commentary'

" fugitive.vim: A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" vim zoom
Plug 'dhruvasagar/vim-zoom'

" vim and snippets
Plug 'honza/vim-snippets'

" Debugging Plugins
Plug 'puremourning/vimspector'

" latex Preview
Plug 'lervag/vimtex'

" vim and markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

call plug#end()

"========================================================================Vim-config
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/general/paths.vim
source $HOME/dotfiles/nvim/general/functions.vim
"========================================================================Plugins
"===========================================Plugins
source $HOME/dotfiles/nvim/plug-config/color.vim
source $HOME/dotfiles/nvim/plug-config/lightline.vim
source $HOME/dotfiles/nvim/plug-config/indentline.vim
source $HOME/dotfiles/nvim/plug-config/comentary.vim
source $HOME/dotfiles/nvim/plug-config/fugitive.vim
source $HOME/dotfiles/nvim/plug-config/zoom.vim
source $HOME/dotfiles/nvim/plug-config/vim-snippets.vim
source $HOME/dotfiles/nvim/plug-config/vimtex.vim
source $HOME/dotfiles/nvim/plug-config/vimmarkdown.vim
source $HOME/dotfiles/nvim/plug-config/netrw.vim
source $HOME/dotfiles/nvim/plug-config/telescope.vim
source $HOME/dotfiles/nvim/plug-config/lsp.vim
"source $HOME/dotfiles/nvim/plug-config/coc.vim
" source $HOME/dotfiles/nvim/plug-config/fzf.vim
" source $HOME/dotfiles/nvim/Plug-config/vimspector.vim

"========================================================================Keys

let mapleader = " "
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nmap <C-n> :Vexplore
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
