function! MyTabline()
  let s = ''
  " Recorre cada pestaña abierta
  for i in range(1, tabpagenr('$'))
    " Ve a la pestaña
    let buf = tabpagebuflist(i)[0]
    let bufname = bufname(buf)
    let filetypee = getbufvar(buf, '&filetype')
    let name = fnamemodify(bufname, ':t') 
    if name == '' && filetypee != ''
      let name = '[' . toupper(filetypee) . ']'
    elseif name == '' && filetypee == ''
      let name = '[NO NAME]'
    endif
    " Agrega el nombre del archivo a la tabline
    if i == tabpagenr()
      let s .= '%#TabLineSel# ' . name . ' %#TabLine#'
    else
      let s .= '%#TabLine# ' . name . ' %#TabLine#'
    endif
    " Separador entre las pestañas
    if i < tabpagenr('$')
      let s .= ' '
    endif
  endfor
  return s
endfunction

set tabline=%!MyTabline()
