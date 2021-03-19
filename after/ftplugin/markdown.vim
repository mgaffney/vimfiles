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

" add easy date insertion
nnoremap <Leader>ds		i<C-R>=strftime("%A %B %d, %Y")<CR><ESC>

" imap <Leader>ds	  <C-R>=strftime("%A %B %d, %Y")<CR>
" Friday November 22, 2013
inoremap <Leader>ds		<C-R>=strftime("%A %B %d, %Y")<CR>
inoremap <Leader>ymd	<C-R>=strftime("%Y-%m-%d")<CR>
inoremap <Leader>mdy	<C-R>=strftime("%m/%d/%y")<CR>
inoremap <Leader>Mdy	<C-R>=strftime("%b %d, %Y")<CR>
inoremap <Leader>ts  	<C-R>=strftime("%T")<CR>

" Insert the current date e.g.: Friday November 22, 2013
inoremap <Leader>zd <C-R>=strftime("%A %B %d, %Y")<CR>
" Insert the current time e.g.: 1.12 PM
inoremap <Leader>zt <C-R>=strftime("%l.%M %p")<CR>
" inoremap \zt <C-R>=strftime("%r")<CR>
" Insert the current date and time e.g.: Friday November 22, 2013 • 1.12 PM
inoremap <Leader>zs <C-R>=strftime("%A %B %d, %Y • %l.%M %p")<CR>

