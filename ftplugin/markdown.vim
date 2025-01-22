
let g:markdown_recommended_style=0

setlocal noexpandtab     " Use the appropriate number of spaces to insert a <Tab>.
setlocal tabstop=2     " Number of spaces that a <Tab> in the file counts for.
setlocal softtabstop=0 " Number of spaces that a <Tab> counts for while performing editing operations.
setlocal shiftwidth=0  " Number of spaces to use for each step of (auto)indent.
" setlocal autoindent    " Copy indent from current line when starting a new line.
setlocal textwidth&    " Maximum width of text that is being inserted
setlocal colorcolumn&  " 'colorcolumn' is a comma-separated list of screen columns that are highlighted with ColorColumn |hl-ColorColumn|.

setlocal wrap
setlocal linebreak     " When on, lines longer than the width of the window will wrap and displaying continues on the next line.
setlocal breakindent
setlocal listchars=tab:│\ ,trail:·,precedes:«,extends:»,eol:¶
