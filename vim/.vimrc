set autowrite
set backspace=indent,eol,start
set number
set cursorline
set showmatch
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
syntax enable
set mouse=a  " sacreligious, but sometimes you want that IDE feel
set laststatus=2
set statusline+=%F\ %y\ line:%l/%L\ (%02p%%)\ col:%c

" Need to install https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'w0rp/ale'
call plug#end()

" `pip install flake8`
let g:ale_python_flake8_executable = "/usr/bin/flake8"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
