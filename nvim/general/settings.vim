" Enable syntax highlighting
syntax enable

" Required to keep multiple buffers
set hidden

" display long lines as one
set nowrap

" encondynd displayed
set encoding=utf-8

" set the number on the side
set relativenumber

" seting numbers 
set number 

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

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" if hidden is not set, TextEdit might fail.
set updatetime=300

" So that I can see `` in markdown files
set conceallevel=0     
" You can't stop me
cmap w!! w !sudo tee %

set clipboard=unnamedplus
set noswapfile 
set nohlsearch 
set noerrorbells
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
