set expandtab
set encoding=UTF-8
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" example: Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'shougo/unite.vim'
Plug 'tomasr/molokai'
Plug 'bronson/vim-trailing-whitespace'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug 'mattn/sonictemplate-vim'
Plug 'simeji/winresizer'
Plug 'hashivim/vim-terraform'


" Initialize plugin system
call plug#end()
" w0rp/ale config
"" 保存時のみ実行する
let g:ale_lint_on_text_changed = 0
"" 表示に関する設定
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:airline#extensions#ale#open_lnum_symbol = '('
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
highlight link ALEErrorSign Tag
highlight link ALEWarningSign StorageClass
"" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" sonictemplate config
let g:sonictemplate_vim_template_dir = ['~/.vim/template']

" winresizer config
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

" airline config
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = 'E'
let g:airline#extensions#ale#warning_symbol = 'W'
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1

colorscheme molokai
