map <Space> <Leader>
map <Leader>p :NERDTreeToggle<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
"nnoremap <TAB> :bnext<CR>
"nnoremap <S-TAB> :bprevious<CR>
map <C-B> :BufExplorer<CR>
"nmap <Leader>ga <Plug>(GitGutterStageHunk)
"nmap <Leader>gu <Plug>(GitGutterUndoHunk)

nnoremap <leader>tn :TestNearest<CR>
nnoremap <leader>tf :TestFile<CR>
nnoremap <leader>ts :TestSuite<CR>
nnoremap <leader>tl :TestLast<CR>
nnoremap <leader>tv :TestVisit<CR>

vmap <LeftRelease> "*ygv
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

nnoremap <silent> <CR> :nohlsearch<CR><CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
