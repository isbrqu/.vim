" -- general --
set nocompatible
set noswapfile
set ttyfast

" -- security --
set nomodeline

set noerrorbells

set fileformats=unix
set fileencoding=utf-8
set encoding=utf-8
set ignorecase

filetype plugin indent on

" -- view --
syntax on
set ruler
set showcmd
set showmatch
" line
set nowrap
set number
set relativenumber
set colorcolumn=80
" chars
set listchars=eol:↲,tab:↦\ ,extends:…,space:⋅
" Characters to fill the statuslines and vertical separators.
set fillchars=fold:\ ,vert:\│
" -- delete --
set backspace=indent,eol,start
" -- window --
" When on, splitting a window will put the new window right of the current one.
set splitright
" -- terminal output codes --
" visual bell
set t_vb=
" number of color
set t_Co=8

" -- color --
highlight StatusLine ctermfg=238 ctermbg=white
highlight StatusLineNC ctermfg=237 ctermbg=white
highlight VertSplit ctermfg=237 ctermbg=237
highlight Folded ctermbg=black
highlight ColorColumn ctermbg=16 guibg=lightgrey

" Highlight the text line of the cursor with CursorLine
autocmd InsertEnter,InsertLeave * set cursorline!

" -- tab --
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" -- undo --
set undofile

set history=6

" -- search --
set hlsearch
set incsearch

" -- clipboard --
set clipboard=unnamedplus

" -- others --
let mapleader=' '
let maplocalleader='-'
set keywordprg=''
set commentstring=#\ %s

" -- normal --
" switch command-line
nnoremap <f4> :
" quit
nnoremap <leader>q :quit<cr>
" move
nnoremap <leader>j <c-d>
nnoremap <leader>k <c-u>
" window
nnoremap <f2> <c-w>
nnoremap <c-h> <c-w><left>
nnoremap <c-l> <c-w><right>
nnoremap <c-k> <c-w><up>
nnoremap <c-j> <c-w><down>
nnoremap <silent> <leader>z :only<cr>
" tab
nnoremap <up> gt
nnoremap <down> gT
" buffer
nnoremap <silent> <left> :bn<cr>
nnoremap <silent> <right> :bN<cr>
nnoremap <silent> <leader>l :bn<cr>
nnoremap <silent> <leader>h :bN<cr>
" search
nnoremap <silent> <leader><leader> :FZF<cr>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>fc :Commits<cr>
nnoremap <silent> <leader>fb :Buffers<cr>
nnoremap <silent> <leader>fw :Windows<cr>
nnoremap <silent> <leader>fh :Helptags<cr>
nnoremap <silent> <leader>ft :BTags<cr>
nnoremap <silent> <leader>fs :Rl ^#+ -+ .+ -+$<cr>
nnoremap <silent> <leader>fS :Rg ^(#+\|"\|//) -+ .+ -+$<cr>
nnoremap <silent> <leader>fl :BLines<esc>
" settings
nnoremap <silent> <f1> :edit $DOT_PATH/vim/vimrc<cr>
nnoremap <silent> <leader>/ :nohlsearch<cr>
" reload
nnoremap <silent> <leader>e :edit<cr>
" yank
nnoremap <leader>y ggyG
" manual
nnoremap <leader>m :MyManual<space>

" -- netrw --
nnoremap <silent> <leader>- :Vexplore<cr>

" -- browser --
nnoremap <silent> <leader>x "uyiW:call system('xdg-open <c-r>u &')<cr>

" -- insert --
" disable
inoremap <f1> <nop>
" autocomplete
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<cr>"

" -- replace --
" simple replace
nnoremap <leader>\ :%s//g<left><left>
" * search selection (uses z register)
vnoremap * "zy:set hlsearch<cr>:let @z=escape(@z,'\\/')<cr>:let @/='\V'.@z<cr>
" <leader>r replace, repeat with .
nmap <leader>r viw*cgn
vmap <leader>r *cgn
" <leader>R replace all
nmap <leader>R viw*:%s/\V<C-r>z/<C-r>z
vmap <leader>R *:%s/\V<C-r>z/<C-r>z

" -- terminal --
" general
tnoremap <f2> <c-w>
" switch normal
tnoremap <f1> <c-w>N
" switch command-line
tnoremap <f4> <c-w>:

" -- disable --
" let g:loaded_zipPlugin = 1
" let g:loaded_2html_plugin = 1
" let g:loaded_netrwPlugin = 1
" let g:loaded_matchparen = 1
" let g:loaded_getscriptPlugin = 1
" let g:loaded_logiPat = 1
" let g:loaded_rrhelper = 1
" let g:loaded_spellfile_plugin = 1
" let g:loaded_tarPlugin = 1
" let g:loaded_vimballPlugin = 1

" -- runtimepath --
set runtimepath^=$DOT_PATH/vim
set runtimepath+=$XDG_DATA_HOME/vim
set runtimepath+=$DOT_PATH/vim/after
set runtimepath+=$HOME/.local/bin

set packpath^=$XDG_DATA_HOME/vim
set packpath+=$DOT_PATH/vim
set packpath+=$DOT_PATH/vim/after
set packpath+=$XDG_DATA_HOME/vim/after

set backupdir=$XDG_CACHE_HOME/vim/backup 
set directory=$XDG_CACHE_HOME/vim/swap   
set undodir=$XDG_CACHE_HOME/vim/undo     
set viewdir=$XDG_DATA_HOME/vim/view

call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
call mkdir(&backupdir, 'p')
call mkdir(&directory, 'p')
call mkdir(&undodir, 'p')
call mkdir(&viewdir, 'p')

if !has('nvim')
    set viminfofile=$XDG_CACHE_HOME/vim/viminfo
endif

