if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	autocmd! BufNewFile,BufRead *.avsc setfiletype json	"avro file
	autocmd! BufNewFile,BufRead *.avdl setfiletype idl	"avro file
	autocmd! BufNewFile,BufRead *.ctmpl setfiletype gotexttmpl
	autocmd! BufNewFile,BufRead *.sh.tpl setfiletype gotexttmpl
	autocmd! BufNewFile,BufRead *.gv setfiletype dot
	autocmd! BufNewFile,BufRead *.mod setfiletype gomod
	autocmd! BufNewFile,BufRead *.bdy setfiletype sql
	autocmd! BufNewFile,BufRead *.fnc setfiletype sql
	autocmd! BufNewFile,BufRead *.prc setfiletype sql
	autocmd! BufNewFile,BufRead *.spc setfiletype sql
	autocmd! BufNewFile,BufRead *.trg setfiletype sql
	autocmd! BufNewFile,BufRead *.mdx setfiletype markdown
	autocmd! BufNewFile,BufRead *.zsh-theme setfiletype zsh
	autocmd! BufNewFile,BufRead *.gs setfiletype javascript
augroup END

" vim:tw=78:ts=4:sw=4:norl:
