set clipboard+=unnamedplus
set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set nowrap
set encoding=utf-8
set autoread
set cursorline
set showmatch
set rtp+=~/.vim,~/.vim/autoload,~/.vim/bundle
set t_Co=256

" netrw config
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_line=1
let g:netrw_chgwin=2

set nocp
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype on
filetype plugin on
filetype plugin indent on

" solarized
set background=dark
" colorscheme solarized
let g:solarized_termcolors=256

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*
let g:syntastic_loc_list_height=3

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntactic_loc_list_height = 5

" tagbar config
nmap <F8> :TagbarToggle<CR>
autocmd VimEnter * nested :call tagbar#autoopen(0)
let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_show_visibility=1
let g:tagbar_show_linenumbers=1
let g:autoshowtag=1

" vim-jsx config
let g:jsx_ext_required=0

" nerdtree
autocmd vimenter * NERDTree

" gitgutter config
let g:gitgutter_realtime=0
let g:gitgutter_eager=0
