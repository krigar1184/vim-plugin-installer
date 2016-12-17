function SetEditorWindow()
    if v:vim_did_enter
        execute "50vs"
    else
        au VimEnter * execute "50vs"
    endif
endfunction


set number
set expandtab
set tabstop=4
set shiftwidth=4

" netrw config

set nocp
filetype plugin on
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_line=1
let g:netrw_chgwin=2

call SetEditorWindow()

execute pathogen#infect()
