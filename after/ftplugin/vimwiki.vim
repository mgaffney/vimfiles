setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2

" add easy date insertion
nnoremap <Leader>ds		i<C-R>=strftime("%A %B %e, %Y")<CR><ESC>

" imap <Leader>ds	  <C-R>=strftime("%A %B %d, %Y")<CR>
" Friday November 22, 2013
inoremap <Leader>ds		<C-R>=strftime("%A %B %e, %Y")<CR>

" Insert the current date e.g.: Friday November 22, 2013
inoremap \zd <C-R>=strftime("%A %B %e, %Y")<CR>
" Insert the current time e.g.: 1.12 PM
inoremap \zt <C-R>=strftime("%l.%M %p")<CR>
" inoremap \zt <C-R>=strftime("%r")<CR>
" Insert the current date and time e.g.: Friday November 22, 2013 • 1.12 PM
inoremap \zs <C-R>=strftime("%A %B %e, %Y • %l.%M %p")<CR>

" Increase the 'done' status of a checkbox
nmap <Leader>a <Plug>VimwikiIncrementListItem
xmap <Leader>a <Plug>VimwikiIncrementListItem

" Decrease the 'done' status of a checkbox
nmap <Leader>x <Plug>VimwikiDecrementListItem
xmap <Leader>x <Plug>VimwikiDecrementListItem

" Todo
iabbr <buffer> td - [ ]

nnoremap <silent><buffer> <LocalLeader>gls :VimwikiSplitLink<CR>
nnoremap <silent><buffer> <LocalLeader>glv :VimwikiVSplitLink<CR>
nnoremap <silent><buffer> <LocalLeader>glt :VimwikiTabnewLink<CR>
