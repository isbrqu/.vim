let fzf_opt_general='--smart-case  --column --line-number --no-heading'
let fzf_opt_color='--colors "match:none" --color=always'
let fzf_rg='rg '.fzf_opt_general.' '.fzf_opt_color

" See `man fzf-tmux` for available options
if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,60%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif

command! -bang -nargs=* Manualbro call Manualbro(<q-args>)
command! -bang -nargs=* Rl
  \ call fzf#vim#grep(
  \   fzf_rg.' -g "'.expand('%').'" -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   fzf_rg.' -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
