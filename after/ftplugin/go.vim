setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal nowrap
setlocal textwidth=80

" Mappings for vim-go bundle

" Show a list of interfaces which is implemented by the type under your cursor
" with <leader>gh (think 'go hierarchy')
au FileType go nmap <Leader>s <Plug>(go-implements)
" Open the relevant Godoc for the word under the cursor with <leader>gd
au FileType go nmap <Leader>gd <Plug>(go-doc-vertical)
" open it vertically with <leader>gv
" au FileType go nmap <Leader>gdv <Plug>(go-doc-vertical)
" open it in a new tab with <leader>gt
au FileType go nmap <Leader>gdt <Plug>(go-doc-tab)
" open the Godoc in browser
au FileType go nmap <Leader>gdb <Plug>(go-doc-browser)

" Run commands, such as go run with <leader>r for the current file or go build
" and go test for the current package with <leader>b and <leader>t. Display a
" beautiful annotated source code to see which functions are covered with
" <leader>c.
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>i <Plug>(go-install)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <leader>l :GoLint<CR>


" By default the mapping gd is enabled which opens the target identifier in
" current buffer. You can also open the definition/declaration in a new
" vertical, horizontal or tab for the word under your cursor:

" au FileType go nmap gd <Plug>(go-def-vertical)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

" Rename the identifier under the cursor to a new name
au FileType go nmap <Leader>e <Plug>(go-rename)

" Show type info for the word under your cursor with <leader>i (useful if you
" have disabled auto showing type info via g:go_auto_type_info)
au FileType go nmap <Leader>i <Plug>(go-info)

" Settings for vim-go bundle

" Sometimes when using both vim-go and syntastic Vim will start lagging while
" saving and opening files. The following fixes this:
" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" Enable goimports to automatically insert import paths instead of gofmt:
let g:go_fmt_command = "goimports"

" This experimental mode is superior to the current mode as it fully saves the
" undo history, so undo/redo doesn't break. 
let g:go_fmt_experimental = 1

" Enable highlighting
" let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1

let g:go_dispatch_enabled = 1
let g:go_auto_type_info = 1  " this doesn't seem to work so turn it off

" let g:go_oracle_scope = ''

" Tagbag settings
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
