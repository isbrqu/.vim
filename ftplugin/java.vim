setlocal expandtab
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

setlocal foldmethod=indent
setlocal foldlevel=1
setlocal foldnestmax=2
setlocal foldlevelstart=2
" let &l:foldlevel = indent('.') / &shiftwidth
setlocal foldminlines=0

function! NeatFoldText()
    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    " let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
    let lines_count_text = '[' . lines_count . ']'
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(foldchar, 8)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    " return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
    return repeat(' ', v:foldlevel * 2) . lines_count_text
endfunction

setlocal foldtext=NeatFoldText()

iabbrev <silent> <buffer> sysout System.out.println();<left><left><c-r>=Eatchar('\s')<cr>

iabbrev <silent> <buffer> pvm public void nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> pbm public boolean nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> pim public int nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> pSm public String nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> pOm public Object nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o

iabbrev <silent> <buffer> vvm private void nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vbm private boolean nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vim private int nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vSm private String nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vOm private Object nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o

iabbrev <silent> <buffer> psvm public static void nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> psbm public static boolean nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> psim public static int nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> psSm public static String nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> psOm public static Object nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o

iabbrev <silent> <buffer> vsvm private static void nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vsbm private static boolean nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vsim private static int nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vsSm private static String nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o
iabbrev <silent> <buffer> vsOm private static Object nameMethod() {<cr>}<up><c-r>=Eatchar('\s')<cr><esc>o

iabbrev <silent> <buffer> inta private int ;<left><c-r>=Eatchar('\s')<cr>
iabbrev <silent> <buffer> stra private String ;<left><c-r>=Eatchar('\s')<cr>
iabbrev <silent> <buffer> boola private boolean ;<left><c-r>=Eatchar('\s')<cr>
iabbrev <silent> <buffer> obja private Object ;<left><c-r>=Eatchar('\s')<cr>

function! JavaRun()
    " tab terminal ++close ++kill="SIGKILL" bash -c "javarun"
    " let l:command = 'echo "@clear" > /tmp/listening-pipe'
    " let l:result = system(l:command)
    " let l:command = 'javarun &> /tmp/listening-pipe'
    let l:subcommand = '"javarun ' . g:main_script . '"'
    let l:command = '"C:/Program Files/Git/bin/bash.exe" -c ' . l:subcommand
    let l:command = 'wt -w 0 new-tab -- ' . l:command
    call system(l:command)
    " echo "Finish!"
endfunction

nnoremap <buffer> <leader>o :call JavaRun()<cr>
tnoremap <silent> Q :q!<cr>


