let s:fzf_opt_general='--smart-case  --column --line-number --no-heading'
let s:fzf_opt_color='--colors "match:none" --color=always'
let s:fzf_rg='rg '.s:fzf_opt_general.' '.s:fzf_opt_color

" See `man fzf-tmux` for available options
if exists('$TMUX')
  let g:fzf_layout = { 'tmux': '-p90%,60%' }
else
  let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
endif

command! -bang -nargs=* Rl
  \ call fzf#vim#grep(
  \   s:fzf_rg.' -g "'.expand('%').'" -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   s:fzf_rg.' -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" search
nnoremap <silent> <leader><leader> :FZF<cr>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>fc :Commits<cr>
nnoremap <silent> <leader>fb :Buffers<cr>
nnoremap <silent> <leader>fw :Windows<cr>
nnoremap <silent> <leader>fh :Helptags<cr>
nnoremap <silent> <leader>ft :BTags<cr>
nnoremap <silent> <leader>fs :Rl ^#+ -+ .+ -+$<cr>
nnoremap <silent> <leader>fS :Rg ^(#+\|"\|//) -+ .+ -+$<cr>
nnoremap <silent> <leader>fl :BLines<esc>
