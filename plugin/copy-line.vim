function! YoutubeMp3()
	let l:line = getline('.')
	let l:command = "youtube-dl --extract-audio --audio-format mp3" 
	silent call system(l:command . " " . l:line . " &> output &")
	echo "Descargando!"
endfunction
