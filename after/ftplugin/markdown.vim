" setlocal wrap
" setlocal linebreak
" setlocal nolist    " list disables linebreak

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

" Prevent vim from automatically inserting line breaks in newly entered text
setlocal textwidth=72
setlocal formatoptions+=t

" Need to use tab character for formatting code blocks
" setlocal tabstop=4
" setlocal shiftwidth=4
" setlocal noexpandtab

setlocal comments+=fb::

nnoremap <buffer> yit O_<C-R>=tolower(strftime('%l:%M %p'))<CR>_<esc>j
