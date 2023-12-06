" Mappings for VIM help files
"
" o - jump forward to next Option link
" O - jump backward to previous Option link
nmap <buffer> o /'[a-z]\{2,\}'<CR>
nmap <buffer> O ?'[a-z]\{2,\}'<CR>

" s - jump forward to next Subject link
" S - jump backward to previous Subject link
nmap <buffer> s /\|\S\+\|<CR>
nmap <buffer> S ?\|\S\+\|<CR>

setlocal number

" nnoremap <F6> :call ToggleSyntax()<cr>
nmap <silent> <F6> :<C-u>call <SID>toggleSyntax()<CR>

if exists("g:loaded_vim_help_toggle")
  finish
endif
let g:loaded_vim_help_toggle = 1

function! s:toggleSyntax()
	" let l:o_filetype =
	if (&filetype == 'help')
		setlocal filetype=text
	else
		setlocal filetype=help
	endif
endfunc

