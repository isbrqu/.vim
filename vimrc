set nocompatible
set encoding=utf-8

syntax enable
set showmatch

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
let g:dracula_colorterm = 0
highlight Normal ctermbg=NONE

set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
set fillchars=fold:\ 
set showmode

set ruler
set scrolloff=0

set t_Co=256
set t_vb=
set ttyfast
set visualbell

set cursorline

set number
set relativenumber

" fugitive? no problem...
set autoread

