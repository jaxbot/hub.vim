" hub.vim
" Ugly simple Hub interface
" see: https://github.com/github/hub

function! s:hub(cmd)
	let cwd = getcwd()
	echo system("cd " . shellescape(expand("%:p:h")) . " && hub " . a:cmd . " && cd " . cwd)
endfunction

command! -nargs=1 Hub call s:hub(<f-args>)

