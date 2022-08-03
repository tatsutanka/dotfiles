" wont open project .nvimrc whiout this here
set exrc

" Required to keep multiple buffers
set hidden

" display long lines as one
set nowrap

" encondynd displayed
set encoding=utf-8

" set the number on the side
set relativenumber

" set the mouse to work
set mouse=a

" changing tab for spaces
set expandtab
set shiftwidth=4
set tabstop=4 softtabstop=4

"prevent insertion text
set noshowmode

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
set noswapfile
set undodir=$HOME/dotfiles/nvim/undodir
set undofile
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" if hidden is not set, TextEdit might fail.
set updatetime=50

" So that I can see `` in markdown files
set conceallevel=0
set clipboard=unnamedplus
set nohlsearch
set noerrorbells
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set smartindent
set nu
set termguicolors
set isfname+=@-@
set cmdheight=2
