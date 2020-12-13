" Enable syntax highlighting
syntax enable

" Required to keep multiple buffers
set hidden

" display long lines as one
set nowrap

" encondynd displayed
set encoding=utf-8

" set the number on the side
set ruler

" seting numbers 
set number 

" set the mouse to work
set mouse=a

" changing tab for spaces
set expandtab
set shiftwidth=4

"prevent insertion text 
set noshowmode

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" if hidden is not set, TextEdit might fail.
set updatetime=300

" So that I can see `` in markdown files
set conceallevel=0     
" You can't stop me
cmap w!! w !sudo tee %
