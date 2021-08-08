function! MyManual(pagebro)
    let file = "~/.local/tmp/man/".a:pagebro.".man"
    execute "new ".l:file
    lchdir ~/.local/tmp/man
    if !filereadable(expand(l:file))
        execute "write ".l:file
        execute "normal!:read!man ".a:pagebro."\<cr>ggdd"
    endif
    setlocal nomodifiable
endfunction

