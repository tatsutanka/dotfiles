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

" DRACULA theme 
Plug 'dracula/vim'

" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" indent guide 
Plug 'Yggdroot/indentLine'

" comenting
Plug 'tpope/vim-commentary'

" fugitive.vim: A Git wrapper so awesome, it should be illegal 
Plug 'tpope/vim-fugitive'

" vim fzf 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

highlight clear
call plug#end()

"========================================================================Vim-config
source $HOME/dotfiles/nvim/general/settings.vim
source $HOME/dotfiles/nvim/general/paths.vim
source $HOME/dotfiles/nvim/keys/keys.vim 
"========================================================================Plugins
"===========================================Themes
source $HOME/dotfiles/nvim/themes/color.vim
source $HOME/dotfiles/nvim/themes/lightline.vim
"===========================================Plugins
source $HOME/dotfiles/nvim/plug-config/coc.vim
source $HOME/dotfiles/nvim/plug-config/indentline.vim
source $HOME/dotfiles/nvim/plug-config/comentary.vim
source $HOME/dotfiles/nvim/plug-config/fugitive.vim
source $HOME/dotfiles/nvim/plug-config/fzf.vim
source $HOME/dotfiles/nvim/plug-config/zoom.vim
source $HOME/dotfiles/nvim/plug-config/vim-snippets.vim
source $HOME/dotfiles/nvim/plug-config/vimtex.vim
source $HOME/dotfiles/nvim/plug-config/vimmarkdown.vim
" source $HOME/dotfiles/nvim/Plug-config/vimspector.vim
