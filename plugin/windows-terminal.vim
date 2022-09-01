" prueba de wt con vim
function! NewTabWt()
	let l:command = "wt --window 1 new-tab -d ."
	silent call system(l:command)
endfunction
 
" nnoremap <silent> <leader>t :call NewTabWt()<cr>
