function! OpenPost()
    let line = getline('.')
    let url = 'https://instagram.com/p/' . l:line
    let command = 'start ' . l:url
    call system(l:command)
    return 0
endfunction

function! MoveId(category)
    execute "normal! ddgg"
    call search(a:category)
    execute "normal! p\<c-o>"
endfunction

function! ChoiceCategory()
    let categories = ['art', 'training', 'meme', 'tech', 'philosophy']
    let choices = ""
    let counter = 1
    " build message
    for category in categories
	let choices .= '&' . counter . ': ' . category . "\n"
	let counter += 1
    endfor
    let option = confirm('', l:choices, 0, )
    let category = l:categories[l:option - 1]
    return l:category
endfunction

function! OpenAndMoveId()
    call OpenPost()
    let category = ChoiceCategory()
    call MoveId(l:category)
endfunction

nnoremap <leader>o :call OpenPost()<cr>
nnoremap <silent> <leader>m :call OpenAndMoveId()<cr>

