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
set tildeop
set rtp+=~/.vim,~/.vim/autoload,~/.vim/bundle
set t_Co=256

autocmd BufEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" === MAPPINGS ===
nmap ,ipdb oimport ipdb;ipdb.set_trace(context=10)<Esc>

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Down>

tnoremap <Esc> <C-\><C-n>

"=== PLUGINS ===

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
let g:solarized_termcolors=256
colorscheme solarized

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
autocmd vimenter * nested :call tagbar#autoopen(0)
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

" python-mode config
let g:pymode=1
let g:pymode_warnings=1
let g:pymode_trim_whitespaces=1
let g:pymode_python='python3'
let g:pymode_indent=1
let g:pymode_folding=0
let g:pymode_doc=1
let g:pymode_run=1
let g:pymode_breakpoint=1
let g:pymode_breakpointcmd='ipdb'
let g:pymode_lint=0
let g:pymode_lint_on_write=1
let g:pymode_list_checkers=['pyflakes', 'pep8', 'mccabe', 'pep257', 'pylint']
let g:pymode_syntax_doctest = g:pymode_syntax_all
