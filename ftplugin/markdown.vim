nnoremap <buffer> <leader>fs1 :Rl ^# <cr>
nnoremap <buffer> <leader>fs2 :Rl ^## <cr>
nnoremap <buffer> <leader>fs3 :Rl ^### <cr>
setlocal colorcolumn=80
setlocal number
setlocal relativenumber
" setlocal foldmethod=syntax

function MarkdownLevel()
    let h = matchstr(getline(v:lnum), '^#\+')
    if empty(h)
        return "="
    else
        return ">" . len(h)
    endif
endfunction

setlocal fillchars=vert:\│
highlight Folded ctermbg=None ctermfg=111

setlocal foldexpr=MarkdownLevel()
setlocal foldmethod=expr
" setlocal foldtext='adfadf'
