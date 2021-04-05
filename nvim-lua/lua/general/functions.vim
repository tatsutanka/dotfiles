fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winsrestview(l:save)
endfun

augroup TANAKA
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
