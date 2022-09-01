set nocompatible
set ttyfast
" bcakup and swap
set nobackup
set noswapfile
" shell
set shell=bash
set shellcmdflag=-O\ expand_aliases\ -c
" set shellcmdflag=-O\ expand_aliases\ --rcfile\ /c/Users/isaac/.bashrc\ -c
" ERROR
set noerrorbells
set novisualbell
" ENCODING
set encoding=utf-8
" set termencoding=utf-8
" set fileencodings=utf-8
" VISUALIZATION
set number
set relativenumber
" STATUS BAR
set ruler
set showmode
set showcmd
" TEXT
syntax enable
set showmatch
set nowrap
" clipboard
set clipboard=unnamed,unnamedplus
" INDENTATION
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
" HISTORY
set history=50
" SEARCH
set hlsearch
set incsearch
set ignorecase
" visual
set t_Co=256
set cursorline
set colorcolumn=80
colorscheme onehalfdark

" MAPS
let mapleader=" "
" quit and write
nnoremap <silent> <leader>q :quit<cr>
nnoremap <silent> <leader>s :write<cr>
nnoremap <silent> <leader>w :write<cr>
" refresh config
nnoremap <silent> <f5> :source $MYVIMRC \| set nohlsearch<cr>
nnoremap <silent> <leader>5 :source $MYVIMRC \| set nohlsearch<cr>
" focus on view with ctrl
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
" focus on view with alt
" execute "set <m-j>=\ej"
" execute "set <m-l>=\el"
" execute "set <m-k>=\ek"
" execute "set <m-h>=\eh"
" nnoremap <m-k> <c-w>k
" nnoremap <m-l> <c-w>l
" nnoremap <m-j> <c-w>j
" nnoremap <m-h> <c-w>h
" change buffer
nnoremap <silent> <leader>l :bn<cr>
nnoremap <silent> <leader>h :bp<cr>
" search and replace
nnoremap <silent> <leader>/ :set nohlsearch<cr>
" * search selection (uses z register)
vnoremap * "zy:set hlsearch<cr>:let @z=escape(@z,'\\/')<cr>:let @/='\V'.@z<cr>
" <leader>r replace, repeat with .
nmap <leader>r viw*cgn
vmap <leader>r *cgn
" <leader>R replace all
nmap <leader>R viw*:%s/\V<C-r>z/<C-r>z
vmap <leader>R *:%s/\V<C-r>z/<C-r>z
