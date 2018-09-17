" setlocal wrap
" setlocal linebreak
" setlocal nolist    " list disables linebreak

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

setlocal foldcolumn=2	" give some visual context even when it's not folded

" Prevent vim from automatically inserting line breaks in newly entered text
setlocal textwidth=80
setlocal formatoptions+=t

" Need to use tab character for formatting code blocks
" setlocal tabstop=4
" setlocal shiftwidth=4
" setlocal noexpandtab

setlocal comments+=fb::

" yit - You insert time
nnoremap <buffer> yit O_<C-R>=tolower(strftime('%l:%M %p'))<CR>_<esc>j

iabbr <buffer> td - [ ]
iabbr <buffer> arch architecture
iabbr <buffer> repo repository
iabbr <buffer> ghi GitHub issue
iabbr <buffer> gh GitHub
iabbr <buffer> zf ZeroFOX
iabbr <buffer> AD Architecture Decisions
