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
call plug#begin()

"A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

" material palenight vim colorscheme
Plug 'drewtempelmeyer/palenight.vim'

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" indent guide 
Plug 'Yggdroot/indentLine'

" comenting
Plug 'tpope/vim-commentary'

" fugitive.vim: A Git wrapper so awesome, it should be illegal 
Plug 'tpope/vim-fugitive'

" vim knowing keys
Plug 'liuchengxu/vim-which-key'

" starter for vim 
Plug 'mhinz/vim-startify'

" vim fzf 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim zoom 
Plug 'dhruvasagar/vim-zoom'

"vim terminal enhencer
Plug 'kassio/neoterm'

"vim latex preview
Plug 'donRaphaco/neotex', { 'for': 'tex' }

" vim and spotify
Plug 'mattpenney89/vimify'

" vim and snippets
Plug 'honza/vim-snippets'

highlight clear
call plug#end()

"========================================================================Vim-config
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/paths.vim
source $HOME/.config/nvim/keys/keys.vim
"========================================================================Plugins
"===========================================Themes
source $HOME/.config/nvim/themes/palenight.vim
source $HOME/.config/nvim/themes/lightline.vim
"===========================================Plugins
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/indentline.vim
source $HOME/.config/nvim/plug-config/comentary.vim
source $HOME/.config/nvim/plug-config/fugitive.vim
source $HOME/.config/nvim/plug-config/which-key.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/starter.vim
source $HOME/.config/nvim/plug-config/zoom.vim
source $HOME/.config/nvim/plug-config/neoterm.vim 
source $HOME/.config/nvim/plug-config/neotex.vim
source $HOME/.config/nvim/plug-config/vimfy.vim
source $HOME/.config/nvim/plug-config/vim-snippets.vim
