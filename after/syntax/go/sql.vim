" let b:current_syntax = ''
" unlet b:current_syntax
"
" syntax include @SQL syntax/sql.vim
"
" syn region goRawString start=+`+ end=+`+ keepend
"
" syn region sqlCode contains=@SQL containedin=goRawString contained
"     \ start=+\v(\n|\s)*(alter|begin|call|comment|commit|connect|create|delete|drop|end|explain|export|grant|import|insert|load|lock|merge|refresh|rename|replace|revoke|rollback|select|set|truncate|unload|unset|update|upsert|with)>+
"     \ end=+`+he=e-1
"
" let b:current_syntax = 'go'
