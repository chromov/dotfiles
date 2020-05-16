if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=bold ctermfg=225 cterm=bold
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=bold ctermfg=181 cterm=bold
augroup END

highlight Sneak guifg=black guibg=#00879F ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow
