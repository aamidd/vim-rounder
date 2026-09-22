function! RoundNumber(precision)
	" word under the cursor
	let l:num_str = expand('<cWORD>')

	" extract the numerical value (if it exists)
	let l:match = matchstr(l:num_str, '-\?\d\+\(\.\d\+\)\?')

	if !empty(l:match)
		let l:value = str2float(l:match)
		let l:format = '%.' . a:precision . 'f'
		let l:rounded = printf(l:format, l:value)

		execute 'normal! ciW' . l:rounded
	else
		echo "No valid number found under cursor."
	endif
endfunction
