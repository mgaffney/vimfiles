setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal nowrap
setlocal textwidth=80

let g:sql_type_default = 'pgsql'

iabbr <buffer> todo -- TODO(mgaffney) <c-r>=strftime("%m/%Y")<cr>:
iabbr <buffer> note -- NOTE(mgaffney):
iabbr <buffer> bug -- BUG(mgaffney):

" Found at:
" https://www.reddit.com/r/vscode/comments/79c5lj/help_replicating_vim_abbreviation_to_insert/
" iab mmhd # <c-r>=strftime("%F--%H:%M")<cr><cr><cr><c-r>=Eatchar('\s')<cr>
