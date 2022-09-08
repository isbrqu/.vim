setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

inoreabbrev <buffer> cl console.log()<left>
inoreabbrev <buffer> ce console.error()<left>

function! s:Run()
    let l:subcommand = '"jsrun"'
    let l:command = '"C:/Program Files/Git/bin/bash.exe" -c ' . l:subcommand
    let l:command = 'wt -w 0 new-tab -- ' . l:command
    call system(l:command)
endfunction

nnoremap <buffer> <leader>o :call <SID>Run()<cr>
