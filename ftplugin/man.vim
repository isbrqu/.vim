setlocal number relativenumber
setlocal colorcolumn=
nnoremap <buffer> <leader>fs :Rl ^[A-Z ]+$<cr>
nnoremap <buffer> <leader>f1 :Rl ^\s+(-\|--)(\[.+\])?.+ <cr>
nnoremap <silent> <buffer> <leader>q
    \ :call system("rm ~/.local/tmp/man/".expand("%"))<cr>:bdelete<cr>
nnoremap <buffer> <leader>f3 :Rl ^\s{5}[a-z]+-[a-z]+<cr>

