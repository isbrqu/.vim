set nocompatible
set encoding=utf-8

syntax enable
set showmatch

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
highlight Normal ctermbg=NONE

set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
" set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
set listchars=tab:→\ ,trail:·,precedes:«,extends:»,eol:¶
" set listchars=tab:>-,trail:.,precedes:<,extends:>,eol:$
set fillchars=fold:\ 
set showmode

set ruler
set scrolloff=0

set t_Co=256
set t_vb=
set ttyfast
set visualbell

set nowrap

set cursorline
set colorcolumn=70
set textwidth=70

set number
set relativenumber

" fugitive? no problem...
set autoread

