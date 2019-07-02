" Install vim-plug {
	if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
" }
" LoadPlugins {
	call plug#begin('~/.vim/plugged')
	" Git {
		Plug 'tpope/vim-git'
		Plug 'tpope/vim-fugitive'
		Plug 'junegunn/gv.vim'
		Plug 'tpope/vim-rhubarb'
		Plug 'airblade/vim-gitgutter'
		" Plug 'gregsexton/gitv'
	" }
	" Colors {
		" Plug 'mgaffney/vim-colors-solarized'
		Plug 'lifepillar/vim-solarized8'
		Plug 'guns/xterm-color-table.vim'
	" }
	" tmux {
		Plug 'tpope/vim-speeddating'
	" }
	" tmux {
		if exists('$TMUX')
			Plug 'christoomey/vim-tmux-navigator'
			Plug 'tmux-plugins/vim-tmux'
			Plug 'tmux-plugins/vim-tmux-focus-events'
			" Plug 'edkolev/tmuxline.vim'
		endif
	" }
	" Distraction Free Writing {
		Plug 'junegunn/goyo.vim'
		Plug 'junegunn/limelight.vim'
	" }
	" TextAlignment {
		Plug 'junegunn/vim-easy-align'
	" }
	" haproxy {
		Plug 'zimbatm/haproxy.vim'
	" }
	" Completion {
		" Plug 'Valloric/YouCompleteMe'
		" Plug 'ervandew/supertab'
		" Plug 'maralla/completor.vim'
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
		Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
		Plug 'josa42/coc-sh', {'do': 'yarn install --frozen-lockfile'}

		" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	" }
	" Snips {
		" Plug 'SirVer/ultisnips'
		" Plug 'honza/vim-snippets'
	" }
	" Search {
		" if executable('ag')
			" Plug 'rking/ag.vim'
		" elseif executable('ack')
			Plug 'mileszs/ack.vim'
			" Plug 'jremmen/vim-ripgrep'
		" endif
		" Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
		" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
		Plug '/usr/local/opt/fzf'
		Plug 'junegunn/fzf.vim'
		Plug 'mhinz/vim-grepper'
	" }
	" TextObjects {
		" Plug 'kana/vim-textobj-user'
		Plug 'unblevable/quick-scope'
		" Plug 'bradford-smith94/quick-scope'
	" }
	" StatusLine {
		"Plug 'bling/vim-airline'
		Plug 'vim-airline/vim-airline'
		Plug 'vim-airline/vim-airline-themes'
	" }
	" Whitespace {
		Plug 'ntpeters/vim-better-whitespace'
	" }
	" Man pages {
		" Plug 'lambdalisue/vim-manpager'
	" }
	" VimHelpers {
		Plug 'tpope/vim-sensible'
		Plug 'tpope/vim-surround'
		Plug 'tpope/vim-unimpaired'
		Plug 'tpope/vim-vinegar'
		Plug 'tpope/vim-obsession'
		Plug 'tpope/vim-characterize'
		" Plug 'tpope/vim-commentary'
		Plug 'tomtom/tcomment_vim'
		Plug 'tpope/vim-dispatch'
		Plug 'tpope/vim-projectionist'
		Plug 'tpope/vim-scriptease'
		Plug 'tpope/vim-repeat'
		" Plug 'tpope/vim-afterimage'
		" Plug 'nelstrom/vim-qargs'
		Plug 'vim-scripts/camelcasemotion'
		" Plug 'thinca/vim-quickrun'
		" Plug 'tommcdo/vim-exchange'
		Plug 'tpope/vim-abolish'
	" }
	" DisplayMarks {
		Plug 'kshenoy/vim-signature'
	" }
	" Syntax {
		Plug 'scrooloose/syntastic'
	" }
	" Tags {
		" Plug 'vim-scripts/taglist.vim'
		Plug 'majutsushi/tagbar'
		Plug 'ludovicchabant/vim-gutentags'
	" }
	" UnixHelpers {
		Plug 'tpope/vim-eunuch'
	" }
	" systemd {
		Plug 'Matt-Deacalion/vim-systemd-syntax'
	" }
	" Plist {
		Plug 'darfink/vim-plist'
	" }
	" Golang {
		" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'tag': '*' }
		Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
		" Plug 'cespare/vim-go-templates'
	" }
	" Database {
		Plug 'tpope/vim-dadbod'
	" }
	" Docker {
		" Plug 'honza/dockerfile.vim'
		Plug 'ekalinin/Dockerfile.vim'
	" }
	" Ruby {
		" Plug 'tpope/vim-bundler'
		" Plug 'tpope/vim-rails'
		" Plug 'tpope/vim-rake'
		" Plug 'tpope/vim-rvm'
		" Plug 'tpope/vim-endwise'
		" Plug 'nelstrom/vim-textobj-rubyblock'
		" Plug 'vim-ruby/vim-ruby'
	" }
	" Java {
		" Plug 'tpope/vim-classpath'
		" Plug 'tfnico/vim-gradle'
	" }
	" JavaScript
		"" Plug 'jelera/vim-javascript-syntax'
		"" Plug 'mgaffney/vim-json'
		"Plug 'pangloss/vim-javascript'
		"" Plug 'wookiehangover/jshint.vim'
		"" Plug 'kennethzfeng/vim-raml'
		"" Plug 'tpope/vim-jdaddy'
		"Plug 'othree/yajs.vim'
		Plug 'elzr/vim-json'
	" }
	" TypeScript {
		Plug 'leafgarland/typescript-vim'
	" }
	" HTML5 {
		"Plug 'othree/html5-syntax.vim'
		"Plug 'othree/html5.vim'
	" }
	" CSS {
		"Plug 'JulesWang/css.vim'
	" }
	" ZenCoding {
		" Plug 'mattn/emmet-vim'
	" }
	" SemanticWeb {
		" Plug 'seebi/semweb.vim'
	" }
	" Cassandra {
		" Plug 'elubow/cql-vim'
		" Plug 'veegee/cql-vim'
	" }
	" Scala {
		" Plug 'derekwyatt/vim-scala'
	" }
	" Markdown {
		" Plug 'godlygeek/tabular' " must come before 'plasticboy/vim-markdown'
		" Plug 'plasticboy/vim-markdown'
		Plug 'tpope/vim-markdown'
		" Plug 'jtratner/vim-flavored-markdown'
	" }
	" AsciiDoc {
		" Plug 'dahu/vim-asciidoc'
		" Plug 'traycerb/asciidoc-vim'
		Plug 'mgaffney/asciidoc-vim'
	" }
	" Pig {
		" Plug 'motus/pig.vim'
	" }
	" RFC {
		" Plug 'vim-scripts/rfc-syntax'
	" }
	" Diagrams {
		" Plug 'wannesm/wmgraphviz.vim'
		Plug 'aklt/plantuml-syntax'
	" }
	" Terraform {
		" Plug 'bkad/vim-terraform'
	" }
	" HashicorpTools {
		Plug 'fatih/vim-hclfmt'
		Plug 'hashivim/vim-hashicorp-tools'
		Plug 'b4b4r07/vim-hcl'
		" Plug 'hashivim/vim-terraform'
		" Plug 'hashivim/vim-vaultproject'
		" Plug 'hashivim/vim-vagrant'
		" Plug 'hashivim/vim-packer'
		" Plug 'hashivim/vim-ottoproject'
		" Plug 'hashivim/vim-consul'
		" Plug 'hashivim/vim-nomadproject'
	" }
	" Python {
		" Plug 'xieyu/pyclewn'
		" Plug 'tmhedberg/SimpylFold'
		" Plug 'vim-scripts/indentpython.vim'
		Plug 'davidhalter/jedi-vim'
	" }
	" Protobuf {
		Plug 'uarun/vim-protobuf'
	" }
	" WebBrowser {
		" Plug 'yuratomo/w3m.vim'
	" }
	" LocalPlugins {
		Plug 'file:///Users/mike/sandbox/vim-myplugins/vim-cheatsheet'
	" }
	" All of your Plugs must be added before the following line
	call plug#end()
" }

" ConfigPlugins {
	" solarized {
		let g:solarized_term_italics = 1
	" }
	" Python {
		" show the docstrings for folded code
		" let g:SimpylFold_docstring_preview=1
	" }
	" Grepper {
		let g:grepper = {}
		let g:grepper.tools = ['rg', 'git', 'grep', 'ag']
		" Search for the current word
		nnoremap <Leader>* :Grepper -cword -noprompt<CR>
		" Open Grepper-prompt for a particular grep-alike tool
		nnoremap <Leader>gg :Grepper -tool rg<CR>
		" Open Grepper-prompt for a grepping through a vault code base
		nnoremap <Leader>vg :Grepper -tool rg -grepprg rg -H --no-heading --vimgrep -g '!vendor' -g '!website' -g '!ui'<CR>
		" Search for the current selection
		nmap gs <plug>(GrepperOperator)
		xmap gs <plug>(GrepperOperator)

	" }
	" Ack and ripgrep {
		" if executable('rg')
			" let g:ackprg = 'rg -S --no-heading --vimgrep'
		" elseif executable('ag')
			" let g:ackprg = 'ag --vimgrep'
		" endif
	" }
	" elzr/vim-json {
		let g:vim_json_syntax_conceal = 0
	" }
	" Markdown (tpope plugin) {
		" let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'go', 'json', 'javascript']
		" let g:markdown_syntax_conceal = 0

		" Turn folding on for markdown files
		" let g:markdown_folding = 1
	" }
	" Markdown (plasticboy) {
		let g:vim_markdown_fenced_languages = ['html', 'python', 'bash=sh', 'go', 'json', 'javascript']
		let g:vim_markdown_syntax_conceal = 0

		" Turn folding on for markdown files
		" let g:vim_markdown_folding = 1
		let g:vim_markdown_folding_style_pythonic = 1
	" }
	" better-whitespace {
		" Defaults
		" let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
		highlight ExtraWhitespace ctermbg=DarkBlue
		let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'html', 'proto']
		autocmd FileType markdown,xml,make,sql,sh,python,json,tf,vim,asciidoc autocmd BufEnter <buffer> EnableStripWhitespaceOnSave
		let g:strip_whitespace_confirm = 0
	" }
	" Distraction Free Writing {

		if &background == 'dark'
			" let g:limelight_conceal_ctermfg = 245  " Solarized Base1
			" let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
		else
			" let g:limelight_conceal_ctermfg = 245  " Solarized Base1
			" let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
		endif
		autocmd! User GoyoEnter Limelight
		autocmd! User GoyoLeave Limelight!
		noremap <leader>z :silent! Goyo<CR>
	" }
	" Git {
		" tpope/vim-fugitive
		nnoremap gst :vertical :Gstatus<CR>
		nnoremap gsl :Glog<CR>
		nnoremap gsd :Gdiff<CR>
		nnoremap gsb :Gblame<CR>
		nnoremap gsw :Gwrite<CR>
		nnoremap gsC :Gcommit<CR>
		nnoremap gscd :Gcd<Bar>pwd<CR>
		nnoremap gsld :Glcd<Bar>pwd<CR>
		" airblade/vim-gitgutter
		" let g:gitgutter_diff_args = '-w' "Ignore whitespaces
		" gregsexton/gitv
		" let g:Gitv_OpenHorizontal = 1
	" }
	" tmux {
		if exists('$TMUX')
			" See https://github.com/christoomey/vim-tmux-navigator/issues/61
			" and https://github.com/neovim/neovim/issues/2048
			nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
			" edkolev/tmuxline.vim
			" let g:tmuxline_powerline_separators = 1
				" \ 'a': ['#S', '#{session_windows}'],
				" \ 'c': ['#{pane_height}', '#{pane_current_command}'],
			" let g:tmuxline_preset = {
				" \ 'a': ['#S'],
				" \ 'b': '#W',
				" \ 'c': ['#{pane_current_command}'],
				" \ 'cwin': ['#I', '#W'],
				" \ 'win': ['#I', '#W'],
				" \ 'x': '#{cursor_y}: #{cursor_x}',
				" \ 'y': [ '%l:%M', '%a %b %e'],
				" \ 'z': '#h'}
		endif
	" }
	" junegunn/vim-easy-align {
		" Start interactive EasyAlign in visual mode (e.g. vipga)
		xmap ga <Plug>(EasyAlign)
		" Start interactive EasyAlign for a motion/text object (e.g. ygaip)
		" (think 'you go align...')
		nmap yga <Plug>(EasyAlign)
	" }
	" Completion {
		"SuperTab
		let g:SuperTabDefaultCompletionType = "context"
		let g:SuperTabClosePreviewOnPopupClose = 1
		let g:SuperTabLongestHighlight = 1
		" completor
		" let g:completor_gocode_binary = '/Users/mike/sandbox/go-workspace/bin/gocode'
		" let g:completor_blacklist = ['tagbar', 'qf', 'netrw', 'unite', 'vimwiki', 'markdown']
	" }
	"
	" Gutentags {
		let g:gutentags_ctags_tagfile=".tags"
		let g:gutentags_ctags_exclude=['*.js', '*.html', '*.css', '*.json']
		set tags=".tags"
	" }
	" Snips {
		" ultisnips
		" let g:UltiSnipsExpandTrigger="<tab>"
		" let g:UltiSnipsListSnippets="<c-tab>"
		let g:UltiSnipsListSnippets="<F9>"
		let g:UltiSnipsJumpForwardTrigger="<c-j>"
		let g:UltiSnipsJumpBackwardTrigger="<c-k>"
		" let g:UltiSnipsExpandTrigger="<D-j>"
		" let g:UltiSnipsExpandTrigger="<CR>"
		" If you want :UltiSnipsEdit to split your window.
		let g:UltiSnipsEditSplit="vertical"
		let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
		" ges - Go Edit Snippets
		nnoremap ges :UltiSnipsEdit<CR>
	" }
	" TextObjects {
		" Insert into your .vimrc after quick-scope is loaded.
		" Obviously depends on <https://github.com/unblevable/quick-scope> being installed.
		" https://gist.github.com/cszentkiralyi/dc61ee28ab81d23a67aa
		" Thanks to @VanLaser for cleaning the code up and expanding capabilities to include e.g. `df`

		augroup qs_colors
		  autocmd!
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
		  " autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
		  " autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
		  " autocmd ColorScheme * highlight QuickScopePrimary ctermfg=17 ctermbg=1 cterm=underline
		  " autocmd ColorScheme * highlight QuickScopeSecondary ctermfg=17 ctermbg=2 cterm=underline
		  "#ffff00
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#00ff00' gui=reverse ctermfg=46 cterm=reverse
		  " autocmd ColorScheme * highlight QuickScopeSecondary guifg='#ffff00' gui=reverse ctermfg=190 cterm=reverse
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#859900' gui=reverse ctermfg=33 cterm=reverse " green
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#657b83' gui=reverse ctermfg=33 cterm=reverse " base00
		  "" autocmd ColorScheme * highlight QuickScopePrimary guifg='#839496' gui=reverse ctermfg=33 cterm=reverse "base0
		  " autocmd ColorScheme * highlight QuickScopeSecondary guifg='#268bd2' gui=reverse ctermfg=136 cterm=reverse " blue
		  "" autocmd ColorScheme * highlight QuickScopeSecondary guifg='#6c71c4' gui=reverse ctermfg=61 cterm=reverse " violet

		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#dc322f' gui=underline ctermfg=33 cterm=reverse " red
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#cb4b16' gui=reverse ctermfg=33 cterm=reverse " orange
		  " autocmd ColorScheme * highlight QuickScopePrimary guifg='#d33682' gui=reverse ctermfg=33 cterm=reverse " magenta

		  autocmd ColorScheme * highlight QuickScopePrimary guifg='#b58900' gui=reverse ctermfg=33 cterm=reverse
		  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#6c71c4' gui=reverse ctermfg=61 cterm=reverse " violet
		augroup END

		let g:qs_enable = 0
		let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]
		"
		function! Quick_scope_selective(movement)
			let needs_disabling = 0
			if !g:qs_enable
				QuickScopeToggle
				redraw
				let needs_disabling = 1
			endif
			let letter = nr2char(getchar())
			if needs_disabling
				QuickScopeToggle
			endif
			return a:movement . letter
		endfunction
		"
		for i in g:qs_enable_char_list
			execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
		endfor
	" }
	" StatusLine {
		" vim-airline
		"
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif
		let g:airline_powerline_fonts=1
		let g:airline#extensions#hunks#enabled = 0
		let g:airline#extensions#tabline#enabled = 0
		" let g:airline#extensions#tabline#show_buffers = 0
		" let g:airline#extensions#tabline#fnamemod = ':p:.'
		" let g:airline#extensions#tabline#fnamemod = ':p:t'
		" let g:airline#extensions#tabline#fnamemod = ':t'
		let g:airline#extensions#bufferline#enabled = 0
		let g:airline#extensions#whitespace#enabled = 0
		let g:airline#extensions#wordcount#enabled = 1
		" let g:airline_symbols = get(g:,'airline_symbols',{})

		let g:airline#extensions#obsession#indicator_text = '' " U+F130 (microphone)

		" let g:airline_symbols.notexists = ' ' "thinspace U+E20E (Toilet - as in 'shit is missing')
		let g:airline_symbols.notexists = ' ' "thinspace U+F059 (Question mark - as in 'where is it')
		" let g:airline_symbols.dirty = ' ' "thinspace U+F2CC (Shower head - as in 'the repo is dirty')
		let g:airline_symbols.dirty = ' ' "thinspace + storm cloud

		let g:airline_left_sep = '' " U+E0B0
		let g:airline_right_sep = '' " U+E0B2
		" 2009 thin space
		let g:airline_right_alt_sep = '' " U+E0B3
		let g:airline_symbols.branch = ''
		let g:airline_symbols.readonly = ''
		" let g:airline_symbols.linenr = ''

		if exists('$TMUX')
			let g:airline#extensions#tmuxline#enabled = 0
		endif
	" }
	" Syntax {
		" scrooloose/syntastic
		let g:syntastic_auto_loc_list = 1
		let g:syntastic_always_populate_loc_list = 1
		" let g:syntastic_html_tidy_exec = 'tidy5'
		" use jshint
		let g:syntastic_javascript_checkers = ['jshint']
		let g:syntastic_shell = '/usr/local/bin/zsh'
		let g:syntastic_sh_checkers=['shellcheck']
		let g:syntastic_sh_shellcheck_args = '-x -s bash'
		let g:syntastic_ignore_files = ['\m^/usr/include/', '\m\c\.html$']
	" }
	" Golang {
		" this must be in vimrc file to work
		" let g:go_fmt_autosave = 0
		" let g:go_def_mapping_enabled = 0
		" geg - Go Edit Go.vim file
		nnoremap geg :tabnew $HOME/.vim/after/ftplugin/go.vim<cr>
	" }
	" HashicorpTools {
		" fatih/vim-hclfmt
		let g:hcl_fmt_autosave = 0
		let g:tf_fmt_autosave = 0
		let g:nomad_fmt_autosave = 1
		let g:terraform_fmt_on_save=1
	" }
	" jedi-vim {
		let g:jedi#use_splits_not_buffers = "right"
	" }
	" coc.nvim {
		" coc.nvim default settings

		" if hidden is not set, TextEdit might fail.
		set hidden
		" Better display for messages
		" set cmdheight=2
		" Smaller updatetime for CursorHold & CursorHoldI
		set updatetime=300
		" don't give |ins-completion-menu| messages.
		set shortmess+=c
		" always show signcolumns
		set signcolumn=yes

		" Use tab for trigger completion with characters ahead and navigate.
		" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
		inoremap <silent><expr> <TAB>
			  \ pumvisible() ? "\<C-n>" :
			  \ <SID>check_back_space() ? "\<TAB>" :
			  \ coc#refresh()
		inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

		function! s:check_back_space() abort
		  let col = col('.') - 1
		  return !col || getline('.')[col - 1]  =~# '\s'
		endfunction

		" Use <c-space> to trigger completion.
		inoremap <silent><expr> <c-space> coc#refresh()

		" Use `[c` and `]c` to navigate diagnostics
		" nmap <silent> [c <Plug>(coc-diagnostic-prev)
		" nmap <silent> ]c <Plug>(coc-diagnostic-next)

		" Remap keys for gotos
		nmap <silent> gd <Plug>(coc-definition)
		nmap <silent> gy <Plug>(coc-type-definition)
		nmap <silent> gi <Plug>(coc-implementation)
		nmap <silent> gr <Plug>(coc-references)

		" Use U to show documentation in preview window
		nnoremap <silent> U :call <SID>show_documentation()<CR>

		" Remap for rename current word
		nmap <leader>rn <Plug>(coc-rename)

		" Remap for format selected region
		vmap <leader>f  <Plug>(coc-format-selected)
		nmap <leader>f  <Plug>(coc-format-selected)
		" Show all diagnostics
		" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
		" Manage extensions
		" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
		" Show commands
		" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
		" Find symbol of current document
		" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
		" Search workspace symbols
		" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
		" Do default action for next item.
		" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
		" Do default action for previous item.
		" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
		" Resume latest coc list
		" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
	" }
	" coc-snippets {
		inoremap <silent><expr> <TAB>
			  \ pumvisible() ? coc#_select_confirm() :
			  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
			  \ <SID>check_back_space() ? "\<TAB>" :
			  \ coc#refresh()

		" function! s:check_back_space() abort
		  " let col = col('.') - 1
		  " return !col || getline('.')[col - 1]  =~# '\s'
		" endfunction

		let g:coc_snippet_next = '<tab>'
	" }
" }

" General {
	" termguicolors must be set before background and colorscheme
	" https://github.com/lifepillar/vim-solarized8/issues/70#issuecomment-502484769

	" Enable True Color support if you have vim >=8.0 or Neovim >= 0.1.5
	if (has("termguicolors"))
		let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
		set termguicolors
	endif

	" syntax enable					" syntax enable keeps your current color settings. :syntax
	set background=dark				" Assume a dark background
	" filetype plugin indent on		" load file type plugins + indentation
	set encoding=utf-8				" The encoding displayed
	" set fileencoding=utf-8			" The encoding written to a file
	scriptencoding utf-8

	set nojoinspaces 				" One space between sentences not two
	set shortmess+=filmnrxoOtT		" abbrev. of messages (avoids 'hit enter')
	set virtualedit=onemore			" allow for cursor beyond last character
"	set history=2000
	set clipboard+=unnamed			" Yanks go on clipboard instead.
	set autowrite					" Writes on make/shell commands
	set cursorline					" Highlight the line the cursor is on
	"set grepprg=ack\ --nogroup\ --column\ $*
	"set grepformat=%f:%l:%c:%m

	" Disable beep and flash (http://vim.wikia.com/wiki/Disable_beeping)
	set noerrorbells
	set visualbell
	set t_vb=
	" Setting up the directories {
		"set undofile
"		set undolevels=1000
"		set undoreload=10000
"		 set nrformats=				 " sets number formats to decimal so 007 <C-a> results in 008.
	" }
" }

" Vim UI {
	" colorscheme solarized
	colorscheme solarized8
	set showmode					" display the current mode

	if has("balloon_eval") && has("unix")
		set ballooneval
	endif

	if has('cmdline_info')
"		set ruler						" show the ruler
"		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)	" a ruler on steroids
"		set showcmd						" show partial commands in status line and
										" selected characters/lines in visual mode
	endif

	if has('statusline')
"		set laststatus=2
		" Broken down into easily includeable segments
		" set statusline=			" clear the statusline for when vimrc is reloaded
		" set statusline=%<%f\				" Filename
		" set statusline+=%w%h%m%r " Options
		" set statusline+=\ %{fugitive#statusline()}	" Git Hotness
		" set statusline+=\ [%{&ff}/%Y]			" filetype
		"set statusline+=\ [%{getcwd()}]			" current dir
		"set statusline+=\ [A=\%03.3b/H=\%02.2B]	" ASCII / Hexadecimal value of char
		" set statusline+=%=													 " right align
		" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
		" set statusline+=%-14.(%l,%c%V%)\ %p%%		" Right aligned file nav info
	endif

"	set backspace=indent,eol,start	" backspace for dummys
	" set linespace=0					" No extra spaces between rows
	set number						" Line numbers on
"	set showmatch					" show matching brackets/parenthesis
	set incsearch					" find as you type search
	set hlsearch					" highlight search terms
	set winminheight=0				" windows can be 0 line high
	set ignorecase					" case insensitive search
	set smartcase					" case sensitive when uc present
	set smarttab		" sw at the start of the line, sts everywhere else
	set timeoutlen=1200 " A little bit more time for macros
	set ttimeoutlen=50	" Make Esc work faster

	"set wildmenu					" show list instead of just completing
	"set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
	"set wildmode=longest,list		 " tab completion like bash's
	set wildmode=longest,list:longest		 " tab completion like zsh's
	" set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
"	set scrolljump=5				" lines to scroll when cursor leaves screen
"	set scrolloff=3					" minimum lines to keep above and below cursor
	" set nofoldenable				" do not auto fold code
	set gdefault					" the /g flag on :s substitutions by default
	"set list
	" set listchars=tab:>.,trail:.,extends:#,nbsp:.	" Highlight problematic whitespace
"	set listchars=tab:▸\ ,eol:¬			" Use the same symbols as TextMate for tabstops and EOLs
	"Invisible character colors
	highlight NonText guifg=#4a4a59 guibg=bg
	highlight SpecialKey guifg=#4a4a59 guibg=bg
	set completeopt-=preview
" }

" Formatting {
	set nowrap				" do not wrap long lines
	set autoindent			" indent at the same level of the previous line
"	set shiftwidth=4		" use indents of 4 spaces
	set noexpandtab			" tabs are tabs not spaces
"	set tabstop=4			" an indentation every four columns
"	set softtabstop=4		" let backspace delete indent
"	set matchpairs+=<:>		" match, to be used with %
	"set pastetoggle=<F12>	" pastetoggle (sane indentation on pastes)
"	set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
	" Remove trailing whitespaces and ^M chars
	"autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

	" Set the tab width
	" let s:tabwidth=4
	" exec 'set tabstop='	.s:tabwidth
	" exec 'set shiftwidth='	.s:tabwidth
	" exec 'set softtabstop='	.s:tabwidth
" }

" More natural split opening {
	set splitbelow
	set splitright

	set diffopt=filler,vertical
" }
" Key (re)Mappings {
	" noremap QQ :qall<CR>
	noremap <F1> <Esc>
	" noremap! <F1>	<Esc>

	" learn to use jk instead of <esc>
	" inoremap <esc> <nop>
	" inoremap jk <esc>

	" Visually select the text that was last edited/pasted
	" Suggestion from http://vimcasts.org/episodes/bubbling-text/
	nnoremap gV `[v`]

	" Easier split navigations
	nnoremap <C-j> <C-W><C-J>
	nnoremap <C-k> <C-W><C-K>
	nnoremap <C-l> <C-W><C-L>
	nnoremap <C-h> <C-W><C-H>

	" augroup CalendarKey
		" autocmd!
		" autocmd FileType calendar nmap <buffer> {key}
			" \ <Plug>(calendar_...)
		" autocmd FileType calendar nunmap <buffer> <C-j>
		" autocmd FileType calendar nunmap <buffer> <C-k>
		" autocmd FileType calendar nunmap <buffer> <C-l>
		" autocmd FileType calendar nunmap <buffer> <C-h>

		" Easier split navigations
		" autocmd FileType calendar nmap <buffer> <C-j> <C-W><C-J>
		" autocmd FileType calendar nmap <buffer> <C-k> <C-W><C-K>
		" autocmd FileType calendar nmap <buffer> <C-l> <C-W><C-L>
		" autocmd FileType calendar nmap <buffer> <C-h> <C-W><C-H>

	" augroup END

	" Use the l register as an append only log
	"
	" delete log
	nnoremap <leader>dl qlq
	" yank line to log
	nnoremap <leader>yl "Lyy
	" paste log
	nnoremap <leader>pl "lp

	" Edit cheatsheet
	nnoremap <leader>ec :tabnew $HOME/.vim/plugged/vim-cheatsheet/doc/cheatsheet.txt<cr>

	" Move visual block
	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv

	" Easier visual indent
	vnoremap < <gv
	vnoremap > >gv

	" :Reg - Display the numbered registers, press a key and paste it to the buffer.
	function! Reg()
		reg
		echo "Register: "
		let char = nr2char(getchar())
		if char != "\<Esc>"
			execute "normal! \"".char."p"
		endif
		redraw
	endfunction
	command! -nargs=0 Reg call Reg()

	" Edit .vimrc file quickly
	" gev - Go Edit Vimrc
	nnoremap gev :tabnew $MYVIMRC<cr>
	" gsv - Go Source Vimrc
	nnoremap gsv :source $MYVIMRC<cr>
	" map <Leader>v  :so $MYVIMRC<CR>

	" Yank CVE
	" nnoremap yc "V3yap3}n

	" Shortcut to rapidly toggle `set list`
	" use col from unimpaired plugin
	" nmap <leader>l :set list!<cr>

	"clearing highlighted search
	nnoremap <silent> <leader>/ :nohlsearch<CR>
	if exists(":nohls")
		"Mac keyboard - Option-; or <M-;>
		" nnoremap <silent> … :nohls<CR>…
		nnoremap … :nohls<CR>
	endif

	"The default leader is '\', but many people prefer ',' as it's in a standard
	"location
	"let mapleader = ','
	" Yank from the cursor to the end of the line, to be consistent with C and D.
	nnoremap Y y$


	" add easy date insertion
	nnoremap <Leader>ds		i<C-R>=strftime("%A %B %e, %Y")<CR><ESC>

	" imap <Leader>ds	  <C-R>=strftime("%A %B %d, %Y")<CR>
	" Friday November 22, 2013
	inoremap <Leader>ds		<C-R>=strftime("%A %B %e, %Y")<CR>
	inoremap <Leader>ymd	<C-R>=strftime("%Y-%m-%d")<CR>
	inoremap <Leader>mdy	<C-R>=strftime("%m/%d/%y")<CR>
	inoremap <Leader>Mdy	<C-R>=strftime("%b %d, %Y")<CR>
	inoremap <Leader>hms	<C-R>=strftime("%T")<CR>

	" Insert the current date e.g.: Friday November 22, 2013
	inoremap \zd <C-R>=strftime("%A %B %e, %Y")<CR>
	" Insert the current time e.g.: 1.12 PM
	inoremap \zt <C-R>=strftime("%l.%M %p")<CR>
	" inoremap \zt <C-R>=strftime("%r")<CR>
	" Insert the current date and time e.g.: Friday November 22, 2013 • 1.12 PM
	inoremap \zs <C-R>=strftime("%A %B %e, %Y • %l.%M %p")<CR>

	" Toggle background between dark and light
	map <F2> :call ToggleBg()<CR>
	" call togglebg#map("<F2>")

	" Make program
	nnoremap <F5> :w<CR> :make<CR>
	" Move current line to end of file but keep cursor in current location
	nnoremap <F3> :.m$<CR> `.
	" nnoremap <F5> :silent make<CR>
	" Toggle TagList window
	" nnoremap <silent> <F8> :TlistToggle<CR>

	""" Code folding options
	nnoremap <leader>f0 :set foldlevel=0<CR>
	nnoremap <leader>f1 :set foldlevel=1<CR>
	nnoremap <leader>f2 :set foldlevel=2<CR>
	nnoremap <leader>f3 :set foldlevel=3<CR>
	nnoremap <leader>f4 :set foldlevel=4<CR>
	nnoremap <leader>f5 :set foldlevel=5<CR>
	nnoremap <leader>f6 :set foldlevel=6<CR>
	nnoremap <leader>f7 :set foldlevel=7<CR>
	nnoremap <leader>f8 :set foldlevel=8<CR>
	nnoremap <leader>f9 :set foldlevel=9<CR>

	"insert random string
	nnoremap <leader>r mx:r! od -vAn -N16 -tx4 < /dev/urandom<CR>ddk:s/\s//<CR>:nohlsearch<CR>"zyiwdd`x"zP

	" Shortcuts
	" Change Working Directory to that of the current file
	cnoremap cwd lcd %:p:h
	cnoremap cd. lcd %:p:h

	" On command-line mode %% automatically expands to the path of the active
	" buffer example:
	" :edit %%Pr<Tab>
	cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

	" visual shifting (does not exit Visual mode)
	vnoremap < <gv
	vnoremap > >gv

	" Fix home and end keybindings for screen, particularly on mac
	" - for some reason this fixes the arrow keys too. huh.
	" map [F $
	" imap [F $
	" map [H g0
	" imap [H g0

	" For when you forget to sudo.. Really Write the file.
	cnoremap w!! w !sudo tee % >/dev/null

	" Toggle Tagbar
	nnoremap <F8> :TagbarToggle<CR>

	" Shortcut to toggle `set syntax` - helpful when writing VIM help
	noremap <F6> :if exists("g:syntax_on") <Bar>
	\	syntax off <Bar>
	\ else <Bar>
	\	syntax enable <Bar>
	\ endif <CR>

	" Disable the arrow keys (good for learning vim)
	" noremap <Up> <Nop>
	" noremap <Down> <Nop>
	" noremap <Left> <Nop>
	" noremap <Right> <Nop>

	" Enable [[ and ]] even when the { or } don't start in the first column
	noremap [[ ?{<CR>w99[{…
	noremap ][ /}<CR>b99]}…
	noremap ]] j0[[%/{<CR>…
	noremap [] k$][%?}<CR>…

	" Highlight word under cursor but do not jump to the next one
	" nnoremap * *``
" }

" Filetype settings {

	autocmd Filetype gitcommit setlocal spell textwidth=72 formatoptions+=t

" }

" Plug Settings {

	" tagbar
	" autocmd VimEnter * nested :call tagbar#autoopen(1)
	" autocmd FileType * nested :call tagbar#autoopen(0)

	" setup :Man for viewing man pages
	runtime ftplugin/man.vim


	" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight

	" DWM plugin
	" nmap <C-Left> <Plug>DWMRotateCounterclockwise
	" nmap <C-Right> <Plug>DWMRotateClockwise

	" let g:dwm_map_keys=0

	" netrw settings
	"let g:netrw_browse_split=0 " default
	"let g:netrw_browse_split=1 " split horizontally
	"let g:netrw_browse_split=2 " split vertically
	"let g:netrw_browse_split=3 " open in new tab
	" let g:netrw_liststyle=1
	let g:netrw_list_hide="^\.git*,^\.rvmrc,\.swp"

	" CommandT Window Height
	" let g:CommandTMaxHeight=20

"	runtime macros/matchit.vim

	" WMGraphviz
	let g:WMGraphviz_output="png"

	" Pathogen - this should be moved to a ruby filetype settings file
	" get Vim to search all gems in your current RVM gemset (requires pathogen.vim)
	" autocmd FileType ruby let &l:tags = pathogen#legacyjoin(pathogen#uniq(
			" \ pathogen#split(&tags) +
			" \ map(split($GEM_PATH,':'),'v:val."/gems/*/tags"')))

	" Golang
	" autocmd FileType go compiler golang
	" let g:golang_goroot = "/usr/local/Cellar/go/1.1"
	"let g:golang_goroot = "/Users/mike/sandbox/go-workspace"

	" PlantUML settings
"	 let g:plantuml_executable_script='java -jar ~/bin/plantuml.jar'

" }

" Zip Files {
	" Additional file extensions that vim can open as zip files see :h zip
augroup zips
	autocmd!
	autocmd BufReadCmd *.jar,*.xpi,*.sar,*.war,*.ear,*.mar,*.aar,*.ipa,*.epub call zip#Browse(expand("<amatch>"))
augroup END
" }

" man pages {
	" runtime ftplugin/man.vim
"}
" GUI Settings {
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		"set guifont=Consolas:h13
		" set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types\ Mono\ Plus\ Font\ Awesome\ Plus\ Octicons\ Plus\ Pomicons:h12
		set guifont=Source\ Code\ Pro\ Nerd\ Complete:h12
		" set guifontwide=SauceCodePro\ Nerd\ Font:h12
		set guifontwide=Source\ Code\ Pro\ Nerd\ Complete:h12
		" set guifont=Source\ Code\ Pro\ for\ Powerline:h14
		" set guifont=Source\ Code\ Pro\ Light:h12	  " Retina Display Setting
		set background=light
		"colorscheme solarized
		if has("gui_macvim")
			macmenu &File.New\ Tab key=<nop>
			" map <D-t> :CommandT<CR>
		endif
		set guioptions-=T	" remove the toolbar
		"set lines=40		" 40 lines of text instead of 24,
	else

		hi SpellBad term=underline cterm=underline
		hi SpellCap term=underline cterm=underline
		hi SpellRare term=underline cterm=underline
		hi SpellLocal term=underline cterm=underline

		" set term=builtin_ansi	" Make arrow and other keys work
		" let g:solarized_termcolors=256
		" let g:solarized_termtrans=1
		" let g:solarized_
	endif
" }


" File Templates {
	" autocmd BufNewFile *.sh 0r $HOME/.vim/templates/template.sh
	" autocmd BufNewFile *.html 0r $HOME/.vim/templates/template.html
" }
"
augroup templates
	autocmd!
	" read in template files
	autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/template.'.expand("<afile>:e")

	" parse special text in the templates after the read
	autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
augroup END

" FileType Overrides {
augroup fileconfigs
	autocmd!
	" let g:xml_syntax_folding=1
	" autocmd FileType xml setlocal foldmethod=syntax
	" autocmd BufNewFile,BufRead *.md,*.markdown,*.mdown,*.note setlocal filetype=markdown
	autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
" Avro files
	autocmd BufNewFile,BufRead *.avsc setlocal filetype=json	"avro file
	autocmd BufNewFile,BufRead *.avdl setlocal filetype=idl	"avro file
"	autocmd BufNewFile,BufRead *.json set filetype=json

	autocmd BufNewFile,BufRead *.ctmpl setlocal filetype=gotexttmpl
	autocmd BufNewFile,BufRead *.sh.tpl setlocal filetype=gotexttmpl
	autocmd BufNewFile,BufRead *.gv setlocal filetype=dot
	" autocmd BufNewFile,BufRead *.
augroup END
" }

" Functions {
	function! ToggleBg()
		if &background == 'dark'
			set bg=light
		else
			set bg=dark
		endif
	endfunc
" }

" Use - `:CopyMatches x` where x is any register to hold the result
function! CopyMatches(reg)
	let hits = []
	%s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
	let reg = empty(a:reg) ? '+' : a:reg
	execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

" Custom syntastic settings:
function! s:find_jshintrc(dir)
	let l:found = globpath(a:dir, '.jshintrc')
	if filereadable(l:found)
		return l:found
	endif

	let l:parent = fnamemodify(a:dir, ':h')
	if l:parent != a:dir
		return s:find_jshintrc(l:parent)
	endif

	return "~/.jshintrc"
endfunction

function! UpdateJsHintConf()
	let l:dir = expand('%:p:h')
	let l:jshintrc = s:find_jshintrc(l:dir)
	let g:syntastic_javascript_jshint_args = l:jshintrc
endfunction

augroup js_files
	autocmd!
	autocmd BufEnter * call UpdateJsHintConf()
augroup END

" Projectionist {
	let g:projectionist_heuristics = {
		\ '*.go': {
		\   '*.go': {
		\       'alternate': '{}_test.go',
		\       'type': 'source'
		\   },
		\   '*_test.go': {
		\       'alternate': '{}.go',
		\       'type': 'test'
		\   },
		\ }
	\ }
" }

" ripgrep {
	" if executable("rg")
		" set grepprg=rg\ --vimgrep\ --no-heading
		" set grepformat=%f:%l:%c:%m,%f:%l:%m
		" from https://github.com/BurntSushi/ripgrep/blob/master/doc/rg.1.md
		" set grepformat^=%f:%l:%c:%m
	" endif
" }

" fzf {
" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
	command! -bang -nargs=* Rg
		\ call fzf#vim#grep(
		\   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
		\   <bang>0 ? fzf#vim#with_preview('up:60%')
		\           : fzf#vim#with_preview('right:50%:hidden', '?'),
		\   <bang>0)

	let g:fzf_files_options =
		\ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'
	"
	" --column: Show column number
	" --line-number: Show line number
	" --no-heading: Do not show file headings in results
	" --fixed-strings: Search term as a literal string
	" --ignore-case: Case insensitive search
	" --no-ignore: Do not respect .gitignore, etc...
	" --hidden: Search hidden files and folders
	" --follow: Follow symlinks
	" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
	" --color: Search color options
	command! -bang -nargs=* Find
		\ call fzf#vim#grep(
		\ 'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color=always '.shellescape(<q-args>), 1, <bang>0)

" }

" plist {
	" Only enable this setting when creating a new plist file.
	" If this is not set when creating a new plist file an error will occur
	" and the new file will not be saved.
	" let g:plist_save_format = 'xml'
" }
" vim:tw=78:ts=4:sw=4:norl:
