" -- status bar --
set laststatus=2
" Separate
set statusline=\  
" Where to truncate line if too long. Default is at the start.
" No width fields allowed.
set statusline+=%<
" Path to the file in the buffer, as typed or relative to current directory.
set statusline+=%f
" Modified flag, text is "[+]"; "[-]" if 'modifiable' is off.
set statusline+=%m
" Readonly flag, text is "[RO]".
set statusline+=%r
" Preview window flag, text is "[Preview]".
set statusline+=%w
" Separation point between left and right aligned items.
" No width fields allowed.
set statusline+=%=
" %l Number of lines in buffer. %c Column number (byte index).
set statusline+=[%l\,%c]
" Type of file in the buffer, e.g., "[vim]".  See 'filetype'.
set statusline+=%y
" Evaluate expression between '%{' and '}' and substitute result.
" Note that there is no '%' before the closing '}'.
" The expression cannot contain a '}' character, call a function to
" work around that.
set statusline+=[%{&fileformats}]
set statusline+=[%{&fileencoding}]

