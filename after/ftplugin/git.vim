" See https://github.com/tpope/vim-fugitive/issues/2020

if &modifiable
  finish
endif

" nnoremap <buffer> gp :Git push -u origin HEAD<CR>
" fixup amend
" nnoremap <buffer> fa commit --fixup=amend:<C-R>=<SID>SquashArgument()<CR>
" nnoremap <buffer> fa :<C-U>Git commit --fixup=amend:<C-R>=<SID>SquashArgument()<CR>
