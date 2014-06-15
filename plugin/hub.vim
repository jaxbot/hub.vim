function! s:hub(cmd)
	call system("hub " . a:cmd)
endfunction

command! -nargs=1 Hub call s:hub(<f-args>)
