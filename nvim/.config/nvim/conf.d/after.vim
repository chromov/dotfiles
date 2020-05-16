augroup auto_gutter
  autocmd!
  autocmd BufEnter,BufWritePost * GitGutter
augroup END

" trigger `autoread` when files changes on disk
augroup auto_read
  autocmd!
  autocmd FocusGained,BufEnter *
        \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif

  " notification after file change
  autocmd FileChangedShellPost *
        \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
augroup END
