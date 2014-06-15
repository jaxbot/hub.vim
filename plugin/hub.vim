" hub.vim
" Ugly simple Hub interface
" see: https://github.com/github/hub

function! s:hub(cmd)
	echo system("hub -C " . shellescape(expand("%:p:h")) . " " . a:cmd)
endfunction

command! -nargs=1 Hub call s:hub(<f-args>)

