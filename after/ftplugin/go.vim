setlocal noexpandtab
setlocal shiftwidth=4
setlocal tabstop=4

setlocal spelloptions=camel

setlocal nowrap
setlocal textwidth=75

setlocal comments=s:/*,m:\ ,e:*/,://

setlocal foldmethod=syntax
setlocal formatoptions+=o
setlocal formatoptions+=r

setlocal noshowmode " must be set for g:go_echo_go_info to work correctly

iabbr <buffer> todo // TODO(mgaffney) <c-r>=strftime("%m/%Y")<cr>:
iabbr <buffer> note // NOTE(mgaffney):
iabbr <buffer> bug // BUG(mgaffney):

if !has("nvim")
nnoremap <F6> :GoSameIdsAutoToggle<cr>
nnoremap <F7> :GoSameIdsToggle<cr>

" Fuzzy search declarations.
" Uses the fzf pluggin so the mapping follows the fzf mappings pattern.
" Think 'find declarations'
nmap <Leader>fd :GoDeclsDir<CR>

nmap <Leader>gc :GoReferrers<CR>
nmap <leader>rn :GoRename<CR>
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
" let g:go_def_mapping_enabled = 0
" Mappings for vim-go bundle

" Show a list of interfaces which is implemented by the type under your cursor
" with <leader>gh (think 'go hierarchy')
" nmap <Leader>gh <Plug>(go-implements)

" Open the relevant Godoc for the word under the cursor with <leader>gd
" nmap <Leader>gdv <Plug>(go-doc-vertical)
" open it vertically with <leader>gv
" nmap <Leader>gdv <Plug>(go-doc-vertical)
" open it in a new tab with <leader>gt
" nmap <Leader>gdt <Plug>(go-doc-tab)
" open the Godoc in browser
" nmap <Leader>gdb <Plug>(go-doc-browser)

" Run commands, such as go run with <leader>gr for the current file or go build
" and go test for the current package with <leader>b and <leader>t. Display a
" beautiful annotated source code to see which functions are covered with
" <leader>c.
nmap <leader>gr <Plug>(go-run)
" nmap <leader>gb <Plug>(go-build)  " gb (go-build) is mapped below
" nmap <leader>gi <Plug>(go-install)
nmap <leader>gtt <Plug>(go-test)
nmap <leader>gtf <Plug>(go-test-func)
nmap <leader>gtc <Plug>(go-coverage-browser)
" nmap <leader>gv <Plug>(go-vet)
" nmap <leader>gl :GoLint<CR>

" By default the mapping gd is enabled which opens the target identifier in
" current buffer. You can also open the definition/declaration in a new
" vertical, horizontal or tab for the word under your cursor:
" nmap gd <Plug>(go-def-vertical)
nmap <Leader>vd <Plug>(go-def-vertical)
nmap <Leader>vD <Plug>(go-def-type-vertical)
nmap <Leader>td <Plug>(go-def-tab)
nmap <Leader>tD <Plug>(go-def-type-tab)


" nmap <Leader>ds <Plug>(go-def-split)
" nmap <Leader>dv <Plug>(go-def-vertical)

" iabbr <buffer> jim jimlambrt

" Rename the identifier under the cursor to a new name
" nmap <Leader>rn <Plug>(go-rename)

" Show type info for the word under your cursor with <leader>i (useful if you
" have disabled auto showing type info via g:go_auto_type_info)
" nmap <Leader>i <Plug>(go-info)
"

" let g:go_debug = ['lsp']

" Settings for vim-go bundle
let g:go_doc_balloon = 0
let g:go_doc_popup_window = 0
let g:go_doc_max_height = 40

let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']

let g:go_term_enabled = 1
let g:go_term_mode = "split"
let g:go_term_height = 5
let g:go_term_reuse = 1

" let g:go_gopls_options = ['-remote=auto']
let g:go_def_mode = 'gopls'
let g:go_info_mode ='gopls'
" let g:go_rename_command = 'gopls'

let g:go_test_timeout= '7m'

" let g:go_echo_go_info = 1

" Sometimes when using both vim-go and syntastic Vim will start lagging while
" saving and opening files. The following fixes this:
" let g:syntastic_go_checkers = ['golint', 'govet']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
"
let g:go_metalinter_command = "golangci-lint"
let g:go_diagnostics_level = 2

" Enable goimports to automatically insert import paths instead of gofmt:
" let g:go_fmt_autosave = 0
let g:go_fmt_command = "gopls"
let g:go_autodetect_gopath = 1
" let g:go_gopls_gofumpt = 1
let g:go_gopls_gofumpt = v:true

let g:go_imports_autosave = 1

  " let g:go_fmt_options = {
    " \ 'gofmt': '-s',
    " \ 'goimports': '-local mycompany.com',
    " \ }

" This experimental mode is superior to the current mode as it fully saves the
" undo history, so undo/redo doesn't break.
" let g:go_fmt_experimental = 1

" Always use a new buffer when looking up a definition/declaration
let g:go_def_reuse_buffer = 0

" Enable highlighting
let g:go_highlight_operators = 0
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1

let g:go_highlight_extra_types = 1

let g:go_updatetime = 400
" let g:go_auto_sameids = 1

let g:go_auto_type_info = 1

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1

" let g:go_oracle_scope = ''

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
nmap <leader>gb :<C-u>call <SID>build_go_files()<CR>

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

endif
" sign define godebugbreakpoint text=> texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=● texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=╳ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⊗ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=Ⓢ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=ⓢ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🛑 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚨 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚦 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=📍 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=📌 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛔ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⏹ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⏸ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⭕ texthl=GoDebugBreakpoint
sign define godebugbreakpoint text=🔴 texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛔ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⛌ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=⬣ texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text= texthl=GoDebugBreakpoint
" sign define godebugbreakpoint text=🚫 texthl=GoDebugBreakpoint

" sign define godebugcurline    text== texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=→ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=↠ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇉ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇒ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇛ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇝ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇥ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇨ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇴ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇶ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇸ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇻ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⇾ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⊳ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⋙ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⋗ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=☛ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=☞ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➔ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➙ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➜ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➤ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➠ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➡ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➪ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➲ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➽ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=➾ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⟹ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⤃ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=► texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=▶ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⦒ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⦔ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⧴ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⮀ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⌦ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text= texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⥤ texthl=GoDebugCurrent    linehl=GoDebugCurrent
" sign define godebugcurline    text=⩥ texthl=GoDebugCurrent    linehl=GoDebugCurrent
sign define godebugcurline    text=⫸ texthl=GoDebugCurrent    linehl=GoDebugCurrent
