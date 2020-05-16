" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_custom_header = split(system('figlet -f big '.toupper(fnamemodify(getcwd(), ':t'))), '\n')
let g:startify_change_to_vcs_root = 1

let g:startify_lists = [
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
