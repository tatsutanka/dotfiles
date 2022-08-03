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

"================Visual
"Making good for the eyes
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'ghifarit53/tokyonight-vim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update Plug 'p00f/nvim-ts-rainbow'
"================Prog
" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'kosayoda/nvim-lightbulb' " debugiing
Plug 'mfussenegger/nvim-dap'
" Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'kevinhwang91/nvim-bqf'
" Telescope 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"general
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-commentary'

"================Note_taking
" note taking
Plug 'vimwiki/vimwiki' 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

call plug#end()

luafile $HOME/dotfiles/nvim/plug-config/settings.lua
luafile $HOME/dotfiles/nvim/plug-config/paths.lua
"========================================================================Visual
luafile $HOME/dotfiles/nvim/plug-config/skin.lua
luafile $HOME/dotfiles/nvim/plug-config/tree.lua
"========================================================================Prog
luafile $HOME/dotfiles/nvim/plug-config/lsp-config.lua
luafile $HOME/dotfiles/nvim/plug-config/compe-config.lua
luafile $HOME/dotfiles/nvim/plug-config/autopairs.lua
luafile $HOME/dotfiles/nvim/plug-config/lsp.lua
"========================================================================Note_taking
luafile $HOME/dotfiles/nvim/plug-config/note_taking.lua
"========================================================================O

let mapleader = ","
let maplocalleader = ","

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
