syntax enable

set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set background=dark
colorscheme solarized

" netrw config
set nocp
filetype plugin on
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_line=1
let g:netrw_chgwin=2

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" tagbar config
nmap <F8> :TagbarToggle<CR>

" vim-jsx config
let g:jsx_ext_required = 0

execute pathogen#infect()
