let mapleader=' '

" write, refresh and quit
nnoremap <silent> <leader>w :write<cr>
nnoremap <silent> <leader>s :write<cr>
nnoremap <silent> <leader>e :edit<cr>
nnoremap <silent> <leader>q :quit<cr>
" config
nnoremap <silent> <leader>1 :edit $MYVIMRC<cr>
nnoremap <silent> <leader>5 :source $MYVIMRC<cr>
nnoremap <silent> <leader>s :write<cr>
" buffer
nnoremap <silent> <leader>n :bnext<cr>
nnoremap <silent> <leader>p :bprevious<cr>
" nnoremap <silent> <leader>l :buffer #<cr> use ctrl-6
nnoremap <leader>t :buffers!<cr>:buffer<space>
" window
nnoremap <silent> <leader>z :only<cr>
" change focus
nnoremap <f2> <c-w>
nnoremap <c-h> <c-w><left>
nnoremap <c-l> <c-w><right>
nnoremap <c-k> <c-w><up>
nnoremap <c-j> <c-w><down>
" yank
nnoremap <leader>y ggyG
" search
nnoremap <silent> <leader>/ :nohlsearch<cr>
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
