vim.cmd('colorscheme tokyonight')
vim.opt.termguicolors = true
vim.o.background= 'dark'

vim.g['tokyonight_style'] = 'night'
vim.g['tokyonight_enable_italic'] = 1
vim.g['indentLine_char_list'] = {'|', '¦', '┆', '┊'}

vim.g['lightline'] = {
       ['colorscheme'] = 'tokyonight',
       ['active'] = {
           ['left'] = {
                { 'mode', 'paste' },
                {'blame','cocstatus' ,'gitbranch', 'readonly', 'filename', 'modified' ,'zoomstatus'},
            },
            ['right'] = {
                {'lineinfo'},
                {'lines'},
                {'fileencoding','filetype'},
            }
       },
       ['component_function'] = {
         ['gitbranch'] = 'FugitiveHead' ,
         ['cocstatus'] = 'coc#status' ,
         ['zoomstatus'] = 'zoom#statusline'
       },
       ['component'] = {
       ['lines'] = '%l/%L'
      },
}

