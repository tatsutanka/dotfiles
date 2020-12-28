
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

