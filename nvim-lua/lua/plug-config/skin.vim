"put colors in nord style
colorscheme dracula
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


let g:indentLine_char_list = ['|', '¦', '┆', '┊']


"lightline stiles
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['blame','cocstatus' ,'gitbranch', 'readonly', 'filename', 'modified' ,'zoomstatus'] ],
      \   'right':[['lineinfo'],
      \             ['lines'],
      \            ['fileencoding','filetype']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead' ,
      \   'cocstatus': 'coc#status' ,
      \   'zoomstatus': 'zoom#statusline'
      \ },
      \ 'component': {
      \ 'lines': '%l/%L'
      \},
      \ }


