function! Eatchar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction
" .vimrc
let g:auto_save = 1  " enable AutoSave on Vim startup

" util script for build
let g:main_script = ''

" function! SetMainScript()
"     let g:main_script = expand('%:p')
"     echo "Main script: " . g:main_script
" endfunction

" nnoremap <silent> <leader>c :call SetMainScript()<cr> 
