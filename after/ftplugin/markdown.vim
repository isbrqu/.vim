scriptencoding utf-8

let s:middot='·'
let s:raquo='»'
let s:small_l='ℓ'

function! MarkdownFoldText()
    let l:lines = ' [' . (v:foldend - v:foldstart + 1) . s:small_l . ']'
    let l:first = substitute(getline(v:foldstart), '\v *', '', '')
    " let l:dashes = substitute(v:folddashes, '-', s:middot, 'g')
    let l:value = l:first . l:lines
    " let l:value = l:first
    " return s:raquo . s:middot . s:middot . l:lines . l:dashes . ': ' 
    return l:value
endfunction

setlocal foldtext=MarkdownFoldText()

