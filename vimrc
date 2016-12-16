set nocompatible

" vim-plug: 
" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'for': 'go'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
" Plug 'valloric/youcompleteme'
" Requires vim with python enabled

call plug#end()

set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

" Golang-specific
" Thanks to https://github.com/fatih/vim-go
let g:go_fmt_command = "goimports"
let g:go_get_update = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>e <Plug>(go-rename)
