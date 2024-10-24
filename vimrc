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
		Plug 'idanarye/vim-merginal'
		" Plug 'gregsexton/gitv'
	" }
	" Symlinks {
		Plug 'aymericbeaumet/vim-symlink'
		Plug 'moll/vim-bbye' " optional dependency
	" }
	" undo {
		Plug 'mbbill/undotree'
	" }
	" GitHub Copilot {
		Plug 'github/copilot.vim'
	" }
	" Colors {
		" Plug 'mgaffney/vim-colors-solarized'

		if has('nvim')
			Plug 'lifepillar/vim-solarized8', { 'dir': '~/.vim/plugged/vim-solarized8-neovim', 'branch': 'neovim' }
		else
			Plug 'lifepillar/vim-solarized8'
		endif

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

		Plug 'guns/xterm-color-table.vim'
		if has('nvim')
			" Plug 'calind/selenized.nvim'
		endif
		" Plug '~/sandbox/solarized/selenized/editors/vim/colors'
		" Plug 'lifepillar/vim-colortemplate'
	" }
	" speeddating {
		Plug 'tpope/vim-speeddating'
	" }
	" tmux {
		if exists('$TMUX')
			Plug 'christoomey/vim-tmux-navigator'
			Plug 'tmux-plugins/vim-tmux'
			" Plug 'edkolev/tmuxline.vim'
		endif
	" }
	" LSP {
		Plug 'neovim/nvim-lspconfig'
		Plug 'simrat39/rust-tools.nvim'
		" Plug 'nvim-lua/completion-nvim'
	" }
	" Telescope {
		Plug 'nvim-lua/plenary.nvim'
		" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
		" or
		" Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
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
	" Snips {
		Plug 'SirVer/ultisnips'
		" Plug 'honza/vim-snippets'
	" }
	" Diff {
		" Plug 'AndrewRadev/linediff.vim'
		" Plug 'nvim-lua/plenary.nvim'
		Plug 'sindrets/diffview.nvim'
		Plug 'nvim-tree/nvim-web-devicons' " optional dependency for diffview.nvim
	" }
	" NerdTree {
		Plug 'preservim/nerdtree'
	" }
	" CSV {
		Plug 'chrisbra/csv.vim'
	" }
	" Completion {
		" Plug 'Valloric/YouCompleteMe'
		" Plug 'ervandew/supertab'
		" Plug 'maralla/completor.vim'
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
		" Plug '/usr/local/opt/fzf'
		Plug '/opt/homebrew/opt/fzf'
		Plug 'junegunn/fzf.vim'
		Plug 'mhinz/vim-grepper'
		" Plug 'trsdln/vim-grepper'
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
	" Folds {
		" Plug 'jrudess/vim-foldtext'
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
		Plug 'embear/vim-localvimrc'
	" }
	" DisplayMarks {
		Plug 'kshenoy/vim-signature'
	" }
	" Syntax {
		" Plug 'scrooloose/syntastic'
	" }
	" Tags {
		" Plug 'vim-scripts/taglist.vim'
		Plug 'majutsushi/tagbar'
		Plug 'zackhsi/fzf-tags'
		Plug 'yegappan/taglist'
		" Plug 'ludovicchabant/vim-gutentags'
	" }
	" UnixHelpers {
		Plug 'tpope/vim-eunuch'
	" }
	" TODO Lists {
		" Plug 'Dimercel/todo-vim'
	" }
	" systemd {
		" Plug 'Matt-Deacalion/vim-systemd-syntax'
	" }
	" Plist {
		Plug 'darfink/vim-plist'
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
	" PostgreSQL {
		Plug 'lifepillar/pgsql.vim'
		Plug 'tomswartz07/vim-pg-explain-syntax'
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
		" Plug 'mgaffney/asciidoc-vim'
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
	" TOML {
		Plug 'cespare/vim-toml'
	" }
	" HashicorpTools {
		" Plug 'fatih/vim-hclfmt'
		" Plug 'hashivim/vim-hashicorp-tools'
		" Plug 'b4b4r07/vim-hcl'
		Plug 'hashivim/vim-terraform'
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
	" vimwiki
		Plug 'mattn/calendar-vim'
		Plug 'vimwiki/vimwiki'
	" }
	" Golang {
		Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	" }
	" coc.nvim {
	"
	" 	coc works best if it is the last plugin loaded. This prevents other
	" 	plugins from overwritting coc's settings.
	"
		" Plug 'neoclide/coc.nvim', {'branch': 'release'}
		" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
		" Plug 'neoclide/coc-sources', {'do': 'yarn install --frozen-lockfile'}
		" Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
		" Plug 'josa42/coc-sh', {'do': 'yarn install --frozen-lockfile'}

		" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	" }
	" All of your Plugs must be added before the following line
	call plug#end()
" }

" python for vim {
	" let g:python_host_prog = '/usr/local/bin/python3'
	" let g:python3_host_prog = '/opt/homebrew/bin/python3'
" }

" ConfigPlugins {
	" solarized {
		let g:solarized_term_italics = 0
		let g:solarized_italics = 0
		" let g:solarized_visibility = 'high'
		" let g:solarized_extra_hi_groups = 1
		" let g:solarized_enable_extra_hi_groups = 0
	" }
	" Python {
		" show the docstrings for folded code
		" let g:SimpylFold_docstring_preview=1
	" }
	"
	" PostgreSQL {
		let g:sql_type_default = 'pgsql'
	" }
	" Grepper {
		let g:grepper = {}
		let g:grepper.tools = ['rg', 'git', 'grep', 'ag']
		" Search for the current word
		nnoremap <Leader>* :Grepper -cword -noprompt<CR>
		" Open Grepper-prompt for a particular grep-alike tool
		nnoremap <Leader>rg :Grepper -tool rg -grepprg rg -H --no-heading --vimgrep --sort path<CR>
		" Open Grepper-prompt for a grepping through a vault code base
		nnoremap <Leader>vg :Grepper -tool rg -grepprg rg -H --no-heading --vimgrep --sort path -g '!vendor' -g '!website' -g '!ui'<CR>
		" Search for the current selection
		" nmap gs <plug>(GrepperOperator)
		" xmap gs <plug>(GrepperOperator)

		" use by default vimgrep -- helps with the Abolish plugin
		set grepprg=internal
	" }
	" Ack and ripgrep {
		" if executable('rg')
			" let g:ackprg = 'rg -S --no-heading --vimgrep'
		" elseif executable('ag')
			" let g:ackprg = 'ag --vimgrep'
		" endif
	" }
	" vimwiki
		let wiki_1 = {}
		let wiki_1.path = '~/vimwiki/'
		let wiki_1.path_html = '~/vimwiki_html/'
		let wiki_1.list_margin = 0
		let wiki_1.auto_tags = 1
		let wiki_1.auto_diary_index = 1
		let wiki_1.nested_syntaxes = {'python': 'python', 'sh': 'sh',
					\ 'c': 'c', 'c++': 'cpp', 'go': 'go', 'bash': 'bash',
					\ 'zsh': 'zsh', 'sql': 'sql', 'hcl': 'hcl'}
		" let wiki_1.ext = '.md'
		" let wiki_1.folding = 'syntax'
		" let wiki_1.syntax = 'markdown'
		let g:vimwiki_list = [wiki_1]
		let g:vimwiki_global_ext = 0
		" let g:vimwiki_hl_headers = 1
		" let g:vimwiki_hl_cb_checked = 1
		" let g:vimwiki_listsyms = ' ○◐●✓'
		let g:vimwiki_listsyms = ' ◔◑◕✓'
		" let g:vimwiki_listsym_rejected = '✗'
		let g:vimwiki_listsym_rejected = '✘'
		let g:vimwiki_dir_link = 'index'
		" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
		" let g:vimwiki_global_ext = 0 " make sure vimwiki doesn't own all .md files

		function! ToggleCalendar()
			execute ":Calendar"
			if exists("g:calendar_open")
				if g:calendar_open == 1
					execute "q"
					unlet g:calendar_open
				else
					g:calendar_open = 1
				end
			else
				let g:calendar_open = 1
			end
		endfunction
		autocmd FileType vimwiki map <leader>cc :call ToggleCalendar()<CR>

	" }
	" elzr/vim-json {
		let g:vim_json_syntax_conceal = 0
	" }
	" Markdown (tpope plugin) {
		let g:markdown_fenced_languages = ['html', 'python',
			\ 'bash=sh', 'go', 'json', 'javascript', 'sql', 'zsh', 'vim']
		let g:markdown_syntax_conceal = 0

		" Turn folding on for markdown files
		let g:markdown_folding = 1
	" }
	" Markdown (plasticboy) {
		" let g:vim_markdown_fenced_languages = ['html', 'python', 'bash=sh', 'go', 'json', 'javascript']
		" let g:vim_markdown_syntax_conceal = 0

		" Turn folding on for markdown files
		" let g:vim_markdown_folding = 1
		" let g:vim_markdown_folding_style_pythonic = 1
	" }
	" better-whitespace {
		" Defaults
		" let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'markdown']
		highlight ExtraWhitespace ctermbg=DarkBlue
		" let g:better_whitespace_filetypes_blacklist=['diff', 'gitcommit', 'unite', 'qf', 'help', 'html', 'proto', 'markdown', 'sql']
		let g:better_whitespace_filetypes_blacklist=['diff', 'git', 'gitcommit', 'unite', 'qf', 'help', 'proto', 'markdown', 'fugitive', 'html']
		" autocmd FileType markdown,xml,make,sql,sh,python,json,tf,vim,asciidoc,vimwiki autocmd BufEnter <buffer> EnableStripWhitespaceOnSave
		let g:strip_whitespace_confirm = 0
		let g:strip_only_modified_lines = 1
		let g:strip_whitespace_on_save = 1
		" let g:diff_binary='/usr/bin/diff --color=never'
	" }
	" Distraction Free Writing {

		if &background == 'dark'
			" let g:limelight_conceal_ctermfg = 245  " Solarized Base1
			" let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
		else
			" let g:limelight_conceal_ctermfg = 245  " Solarized Base1
			" let g:limelight_conceal_guifg = '#8a8a8a'  " Solarized Base1
		endif
		" autocmd! User GoyoEnter Limelight
		" autocmd! User GoyoLeave Limelight!
		noremap <leader>z :silent! :Goyo<CR>
		let g:goyo_width = 100
	" }
	" Git {
		" tpope/vim-fugitive

		" https://github.com/tpope/vim-fugitive/issues/132#issuecomment-649516204
		command! DiffHistory call s:view_git_history()

		function! s:view_git_history() abort
			Git difftool --name-only ! !^@
			call s:diff_current_quickfix_entry()
			" Bind <CR> for current quickfix window to properly set up diff split layout after selecting an item
			" There's probably a better way to map this without changing the window
			copen
			nnoremap <buffer> <CR> <CR><BAR>:call <sid>diff_current_quickfix_entry()<CR>
			wincmd p
		endfunction

		function s:diff_current_quickfix_entry() abort
			" Cleanup windows
			for window in getwininfo()
				if window.winnr !=? winnr() && bufname(window.bufnr) =~? '^fugitive:'
					exe 'bdelete' window.bufnr
				endif
			endfor
			cc
			call s:add_mappings()
			let qf = getqflist({'context': 0, 'idx': 0})
			if get(qf, 'idx') && type(get(qf, 'context')) == type({}) && type(get(qf.context, 'items')) == type([])
				let diff = get(qf.context.items[qf.idx - 1], 'diff', [])
				echom string(reverse(range(len(diff))))
				for i in reverse(range(len(diff)))
					exe (i ? 'leftabove' : 'rightbelow') 'vert diffsplit' fnameescape(diff[i].filename)
					call s:add_mappings()
				endfor
			endif
		endfunction

		function! s:add_mappings() abort
			nnoremap <buffer>]q :cnext <BAR> :call <sid>diff_current_quickfix_entry()<CR>
			nnoremap <buffer>[q :cprevious <BAR> :call <sid>diff_current_quickfix_entry()<CR>
			" Reset quickfix height. Sometimes it messes up after selecting another item
			11copen
			wincmd p
		endfunction

		nnoremap gst :vertical :G<CR>
		nnoremap <leader>gll :vertical :G log<CR>
		nnoremap <leader>glf :vertical :G log --name-only<CR>
		nnoremap <leader>glm :vertical :G log --author="Michael Gaffney"<CR>
		nnoremap <leader>glt :vertical :G log --author="Messier"<CR>

		" command! -nargs=+ Gca :r!git log -n100 --pretty=format:"\%an <\%ae>" | grep '-i' '<args>' | head -1 | xargs echo "Co- authored-by:"

  		" exe s:Map('n', 'cf', ':<C-U>Git commit --fixup=<C-R>=<SID>SquashArgument()<CR>', '', ft)

		" nnoremap gsd :Gdiff<CR>
		" nnoremap gb :G blame<CR>
		" nnoremap gsw :Gwrite<CR>
		" nnoremap gsC :Gcommit<CR>
		" nnoremap gscd :Gcd<Bar>pwd<CR>
		" nnoremap gsld :Glcd<Bar>pwd<CR>
		" airblade/vim-gitgutter
		" let g:gitgutter_diff_args = '-w' "Ignore whitespaces
		" gregsexton/gitv
		" let g:Gitv_OpenHorizontal = 1
		xmap <leader>ggy :GBrowse!<CR>
		xmap <leader>ggp S]`>a()<ESC>hp
	" }
	" vim-merginal {
		map <leader>gB :MerginalToggle<CR>
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

			let g:tmuxline_separators = {
				\ 'left' : '',
				\ 'left_alt': '',
				\ 'right' : '',
				\ 'right_alt' : '',
				\ 'space' : ' '}

			let g:tmuxline_preset = {
				\ 'a': ['#S'],
				\ 'b': '#W',
				\ 'c': ['#{pane_current_command}'],
				\ 'cwin': ['#I', '#W'],
				\ 'win': ['#I', '#W'],
				\ 'x': '#{cursor_y}: #{cursor_x}',
				\ 'y': [ '%l:%M', '%a %b %e'],
				\ 'z': '#h'}
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
		" let g:SuperTabDefaultCompletionType = "context"
		" let g:SuperTabClosePreviewOnPopupClose = 1
		" let g:SuperTabLongestHighlight = 1
		" completor
		" let g:completor_gocode_binary = '/Users/mike/sandbox/go-workspace/bin/gocode'
		" let g:completor_blacklist = ['tagbar', 'qf', 'netrw', 'unite', 'vimwiki', 'markdown']
	" }
	"
	" Gutentags {
		" let g:gutentags_ctags_tagfile=".tags"
		" let g:gutentags_ctags_exclude=['*.js', '*.html', '*.css', '*.json']
		" set tags=".tags"
	" }
	" Snips {
		" ultisnips
		" let g:UltiSnipsExpandTrigger="<tab>"
		" let g:UltiSnipsListSnippets="<c-tab>"

		" Let coc.nvim and coc-ultisnips trigger ultisnips
		" https://github.com/SirVer/ultisnips/issues/1052#issuecomment-504719268
		let g:UltiSnipsExpandTrigger = "<nop>"
		" let g:UltiSnipsExpandTrigger = "<tab>"
		" let g:UltiSnipsListSnippets="<F9>"
		let g:UltiSnipsListSnippets="<c-l>"
		let g:UltiSnipsJumpForwardTrigger="<c-j>"
		let g:UltiSnipsJumpBackwardTrigger="<c-k>"
		" let g:UltiSnipsExpandTrigger="<D-j>"
		" let g:UltiSnipsExpandTrigger="<CR>"
		" If you want :UltiSnipsEdit to split your window.
		let g:UltiSnipsEditSplit="vertical"

		" let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
		" let g:UltiSnipsSnippetDirectories=["~/.vim/UltiSnips"]
		" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
		" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

		" ges - Go Edit Snippets
		nnoremap ges :UltiSnipsEdit!<CR>
	" }
	" QuickScope TextObjects {
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

		" let g:qs_enable = 0
		let g:qs_second_highlight = 0
		let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

		" let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]
		"

		" function! Quick_scope_selective(movement)
		" 	let needs_disabling = 0
		" 	if !g:qs_enable
		" 		QuickScopeToggle
		" 		redraw
		" 		let needs_disabling = 1
		" 	endif
		" 	let letter = nr2char(getchar())
		" 	if needs_disabling
		" 		QuickScopeToggle
		" 	endif
		" 	return a:movement . letter
		" endfunction
        "
		" for i in g:qs_enable_char_list
		" 	execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
		" endfor
	" }
	" StatusLine {
		" vim-airline
		"
		if !exists('g:airline_symbols')
			let g:airline_symbols = {}
		endif
		let g:airline_powerline_fonts=1
		let g:airline#extensions#hunks#enabled = 1
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
		let g:airline_selenized_normal_green = 0
		" let g:airline#extensions#coc#enabled = 1
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
		" let g:syntastic_shell = '/usr/local/bin/zsh'
		let g:syntastic_shell = '/opt/homebrew/bin/zsh'
		" let g:syntastic_sh_checkers=['shellcheck']
		" let g:syntastic_sh_shellcheck_args = '-x -s bash'
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
		let g:nomad_fmt_autosave = 0
		let g:terraform_fmt_on_save=0
	" }
	" jedi-vim {
		let g:jedi#use_splits_not_buffers = "right"
	" }
	" coc.nvim {
		" coc.nvim default settings
		" Synced with coc.nvim README.md  2042265d2c6ca508ee74eb076916a301c4409c78
		" https://github.com/neoclide/coc.nvim/blob/release/Readme.md

		" let g:coc_global_extensions = ['coc-ultisnips']

		" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
		" unicode characters in the file autoload/float.vim
		set encoding=utf-8

		" TextEdit might fail if hidden is not set.
		set hidden

		" Some servers have issues with backup files, see #649.
		set nobackup
		set nowritebackup

		" Give more space for displaying messages.
		set cmdheight=2

		" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
		" delays and poor user experience.
		set updatetime=300

		" Don't pass messages to |ins-completion-menu|.
		set shortmess+=c

		" Always show the signcolumn, otherwise it would shift the text each time
		" diagnostics appear/become resolved.
		if has("nvim-0.5.0") || has("patch-8.1.1564")
			" Recently vim can merge signcolumn and number column into one
			" set signcolumn=number
			" set signcolumn=auto
			set signcolumn=yes
		else
			set signcolumn=yes
		endif

		" Use tab for trigger completion with characters ahead and navigate.
		" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
		" other plugin before putting this into your config.
		" inoremap <silent><expr> <TAB>
		" 	\ coc#pum#visible() ? coc#pum#next(1):
		" 	\ <SID>check_back_space() ? "\<Tab>" :
		" 	\ coc#refresh()
		" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
        "
		" function! s:check_back_space() abort
		" 	let col = col('.') - 1
		" 	return !col || getline('.')[col - 1]  =~# '\s'
		" endfunction
        "
		" " Use <c-space> to trigger completion.
		" if has('nvim')
		" 	inoremap <silent><expr> <c-space> coc#refresh()
		" else
		" 	inoremap <silent><expr> <c-@> coc#refresh()
		" endif

		" Make <CR> auto-select the first completion item and notify coc.nvim to
		" format on enter, <cr> could be remapped by other vim plugin
		" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
										" \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

		" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
		" 								\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
		" Use `[g` and `]g` to navigate diagnostics
		" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
		" nmap <silent> [g <Plug>(coc-diagnostic-prev)
		" nmap <silent> ]g <Plug>(coc-diagnostic-next)

		" GoTo code navigation.
		" nmap <Leader>gcd <Plug>(coc-definition)
		" nmap <Leader>gcy <Plug>(coc-type-definition)
		" nmap <Leader>gci <Plug>(coc-implementation)
		" nmap <Leader>gcr <Plug>(coc-references)

		" nmap <Leader>gcv :vsp<CR><Plug>(coc-definition)
		" nmap <Leader>gcD :vsp<CR><Plug>(coc-definition)
		" nmap <silent> gt :vsp<CR><Plug>(coc-definition)<C-W>T

		" map <leader>d :<C-u>call CocActionAsync("jumpDefinition", "split")<CR>

		" Use K to show documentation in preview window.
		" nnoremap <silent>K :call <SID>show_documentation()<CR>

		" function! s:show_documentation()
		" 	if (index(['vim','help'], &filetype) >= 0)
		" 		execute 'h '.expand('<cword>')
		" 	elseif (coc#rpc#ready())
		" 		call CocActionAsync('doHover')
		" 	else
		" 		execute '!' . &keywordprg . " " . expand('<cword>')
		" 	endif
		" endfunction

		" Highlight the symbol and its references when holding the cursor.
		" autocmd CursorHold * silent call CocActionAsync('highlight')

		" Symbol renaming.
		" nmap <leader>rn <Plug>(coc-rename)

		" Formatting selected code.
		" xmap <leader>q  <Plug>(coc-format-selected)
		" nmap <leader>q  <Plug>(coc-format-selected)

		" augroup cocgroup
		" 	autocmd!
		" 	" Setup formatexpr specified filetype(s).
		" 	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
		" 	" Update signature help on jump placeholder.
		" 	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
		" 	" Organize imports for go files
		" 	autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
		" 	" coc.nvim uses jsonc as configuration file format
		" 	autocmd FileType json syntax match Comment +\/\/.\+$+
		" augroup end


		" Applying codeAction to the selected region.
		" Example: `<leader>aap` for current paragraph
		" xmap <leader>a  <Plug>(coc-codeaction-selected)
		" nmap <leader>a  <Plug>(coc-codeaction-selected)

		" Remap keys for applying codeAction to the current buffer.
		" nmap <leader>ac  <Plug>(coc-codeaction)
		" Apply AutoFix to problem on the current line.
		" nmap <leader>qf  <Plug>(coc-fix-current)

		" Map function and class text objects
		" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
		" xmap if <Plug>(coc-funcobj-i)
		" omap if <Plug>(coc-funcobj-i)
		" xmap af <Plug>(coc-funcobj-a)
		" omap af <Plug>(coc-funcobj-a)
		" xmap ic <Plug>(coc-classobj-i)
		" omap ic <Plug>(coc-classobj-i)
		" xmap ac <Plug>(coc-classobj-a)
		" omap ac <Plug>(coc-classobj-a)

		" Remap <C-f> and <C-b> for scroll float windows/popups.
		" if has('nvim-0.4.0') || has('patch-8.2.0750')
		" 	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		" 	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
		" 	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
		" 	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
		" 	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
		" 	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
		" endif

		" Use CTRL-S for selections ranges.
		" Requires 'textDocument/selectionRange' support of language server.
		" nmap <silent> <C-s> <Plug>(coc-range-select)
		" xmap <silent> <C-s> <Plug>(coc-range-select)

		" Add `:Format` command to format current buffer.
		" command! -nargs=0 Format :call CocActionAsync('format')

		" Add `:Fold` command to fold current buffer.
		" command! -nargs=? Fold :call     CocAction('fold', <f-args>)

		" Add `:OR` command for organize imports of the current buffer.
		" command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

		" Add (Neo)Vim's native statusline support.
		" NOTE: Please see `:h coc-status` for integrations with external plugins that
		" provide custom statusline: lightline.vim, vim-airline.
		" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

		" Mappings for CoCList
		" Show all diagnostics.
		" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
		" Manage extensions.
		" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
		" Show commands.
		" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
		" Find symbol of current document.
		" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
		" Search workspace symbols.
		" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
		" Do default action for next item.
		" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
		" Do default action for previous item.
		" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
		" Resume latest coc list.
		" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

	" }
	" coc-snippets {
		" inoremap <silent><expr> <TAB>
				" \ pumvisible() ? coc#_select_confirm() :
				" \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
				" \ <SID>check_back_space() ? "\<TAB>" :
				" \ coc#refresh()

		" function! s:check_back_space() abort
			" let col = col('.') - 1
			" return !col || getline('.')[col - 1]  =~# '\s'
		" endfunction

		" let g:coc_snippet_next = '<tab>'
	" }
" }

" General {
	" termguicolors must be set before background and colorscheme
	" https://github.com/lifepillar/vim-solarized8/issues/70#issuecomment-502484769

	" Enable True Color support if you have vim >=8.0 or Neovim >= 0.1.5
	if (has("termguicolors"))
		if !has("nvim")
			let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
			let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
		endif
		set termguicolors
	endif

	augroup solarized8_override
		autocmd!
		" I like green statements
		" autocmd ColorScheme solarized8 highlight Statement guifg=#5FD75F ctermfg=green
		" I like transparent background for terminals
		" autocmd ColorScheme solarized8 highlight Normal ctermb=NONE
		" I like italic comments
		" The solarized8 default value for Comment is:
		" highlight Comment ctermfg=242 ctermbg=NONE cterm=italic
		" autocmd ColorScheme solarized8 highlight Comment ctermfg=246 guifg=#949494
		" autocmd ColorScheme solarized8 highlight Comment ctermfg=236 guifg=236
		" etc ...
	augroup END

	" syntax enable					" syntax enable keeps your current color settings. :syntax
	set background=dark				" Assume a dark background
	" if has('nvim')
		colorscheme selenized
	" else
		" colorscheme solarized8
	" endif
	" autocmd vimenter * ++nested colorscheme solarized8

	" filetype plugin indent on		" load file type plugins + indentation
	set encoding=utf-8				" The encoding displayed
	" set fileencoding=utf-8			" The encoding written to a file
	scriptencoding utf-8

	set nojoinspaces 				" One space between sentences not two
	set shortmess+=filmnrxoOtT		" abbrev. of messages (avoids 'hit enter')
	set virtualedit=onemore			" allow for cursor beyond last character
	set history=10000
	set clipboard+=unnamed			" Yanks go on clipboard instead.
	set autowrite					" Writes on make/shell commands
	set cursorline					" Highlight the line the cursor is on
	"set grepprg=ack\ --nogroup\ --column\ $*
	"set grepformat=%f:%l:%c:%m

	" Disable beep and flash (http://vim.wikia.com/wiki/Disable_beeping)
	set noerrorbells
	set visualbell
	set t_vb=

	" Let's save undo info!
	if !isdirectory($HOME."/.vim")
		call mkdir($HOME."/.vim", "", 0770)
	endif
	if !isdirectory($HOME."/.vim/undo-dir")
		call mkdir($HOME."/.vim/undo-dir", "", 0700)
	endif
	set undodir=~/.vim/undo-dir
	set undofile
	" Setting up the directories {
		"set undofile
"		set undolevels=1000
"		set undoreload=10000
"		 set nrformats=				 " sets number formats to decimal so 007 <C-a> results in 008.
	" }
" }

" Vim UI {
	" colorscheme solarized
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
	set number						" Make relative line 0 show the Line numbers on
	set relativenumber				" Relative Line numbers on
"	set showmatch					" show matching brackets/parenthesis

	set incsearch					" find as you type search
	set hlsearch					" highlight search terms
	set ignorecase					" case insensitive search
	set smartcase					" case sensitive when uc present

	set winminheight=0				" windows can be 0 line high
	set smarttab		" sw at the start of the line, sts everywhere else
	set timeoutlen=1200 " A little bit more time for macros
	set ttimeoutlen=50	" Make Esc work faster

	set wildmenu					" show list instead of just completing
	"set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
	" set wildmode=longest,list		 " tab completion like bash's
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
	" don't use bold for folds
	" highlight Folded cterm=none ctermfg=246 ctermbg=236 gui=none guifg=#839496 guibg=#073642 guisp=#002b36
	highlight Folded cterm=none gui=none

	" Override the float border
	highlight FloatBorder guifg=#073642 guibg=#073642

	" Override the highlight for goSameId
	highlight goSameId gui=reverse guifg=#268bd2

    " function MyFoldText()
    "   let line = getline(v:foldstart)
    "   let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
    "   return v:folddashes .. sub
    " endfunction
    " set foldtext=MyFoldText()

	set completeopt-=preview
" }

" Formatting {
	set nowrap				" do not wrap long lines
	set autoindent			" indent at the same level of the previous line
"	set shiftwidth=4		" use indents of 4 spaces
	set shiftround			" round indents to multiple of shiftwidth
"	set noexpandtab			" tabs are tabs not spaces
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
" Neovim {
	if has('nvim')
	" Terminal {
		" exit terminal mode with <esc>
		" tnoremap <Esc> <C-\><C-n>
		" Send Escape key to terminal (mnemonic: Verbatim escape)
		" tnoremap <C-v><Esc> <Esc>
	" }
" 	Mouse {
		set mouse=a
" 	}
	endif
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

	" File navigation - use vertical splits
	" nnoremap <C-W>f :vsplit<CR>gf
	" nnoremap <C-W>F :vsplit<CR>gF

	" Remap gf to open the file under cursor in a newvertical split
	nnoremap gf :vsp <cfile><CR>

	" Open a vertical split
	" nnoremap <leader>v <C-W>v

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
	" nnoremap <leader>dl qlq
	" yank line to log
	" nnoremap <leader>yl "Lyy
	" paste log
	" nnoremap <leader>pl "lp

	" Move visual block
	" vnoremap J :m '>+1<CR>gv=gv
	" vnoremap K :m '<-2<CR>gv=gv

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
	" nnoremap gev :tabnew $HOME/.vim/vimrc<cr>
	" gsv - Go Source Vimrc
	" nnoremap gsv :source $HOME/.vim/vimrc<cr>
	" nnoremap <leader>sv :source $MYVIMRC<CR>
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

	" https://stackoverflow.com/a/17096082/204110
	"
	" relative path (src/foo.txt)
	nnoremap <leader>cfr :let @+=expand("%")<CR>

	" absolute path (/something/src/foo.txt)
	nnoremap <leader>cfa :let @+=expand("%:p")<CR>

	" filename (foo.txt)
	nnoremap <leader>cff :let @+=expand("%:t")<CR>

	" directory name (/something/src)
	nnoremap <leader>cfd :let @+=expand("%:p:h")<CR>

	" command Todo execute 'silent Ggrep!' 'TODO\|FIXME'

" command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

	" nnoremap <leader>g :silent Ggrep! <cword><CR>

	" Make program
	" nnoremap <F5> :w<CR> :make<CR>
	" Move current line to end of file but keep cursor in current location
	" nnoremap <F3> :.m$<CR> `.
	" nnoremap <F5> :silent make<CR>
	" Toggle TagList window
	" nnoremap <silent> <F8> :TlistToggle<CR>

	" Folding
	set foldlevelstart=0

	" Space to toggle folds.
	nnoremap <Space> za
	vnoremap <Space> za

	" "Refocus" folds
	" nnoremap ,z zMzvzz

	" Make zO recursively open whatever top level fold we're in, no matter where the
	" cursor happens to be.
	nnoremap zO zczO

	""" Code folding options
	" nnoremap <leader>f0 :set foldlevel=0<CR>
	" nnoremap <leader>f1 :set foldlevel=1<CR>
	" nnoremap <leader>f2 :set foldlevel=2<CR>
	" nnoremap <leader>f3 :set foldlevel=3<CR>
	" nnoremap <leader>f4 :set foldlevel=4<CR>
	" nnoremap <leader>f5 :set foldlevel=5<CR>
	" nnoremap <leader>f6 :set foldlevel=6<CR>
	" nnoremap <leader>f7 :set foldlevel=7<CR>
	" nnoremap <leader>f8 :set foldlevel=8<CR>
	" nnoremap <leader>f9 :set foldlevel=9<CR>

	"insert random string
	" nnoremap <leader>r mx:r! od -vAn -N16 -tx4 < /dev/urandom<CR>ddk:s/\s//<CR>:nohlsearch<CR>"zyiwdd`x"zP

	" Shortcuts
	" Change Working Directory to that of the current file
	cnoremap cwd lcd %:p:h
	cnoremap cd. lcd %:p:h

	" Change Working Directory to the parent directory of the current file
	cnoremap cpwd lcd %:p:h/..
	cnoremap cpd. lcd %:p:h/..

	" On command-line mode %% automatically expands to the path of the active
	" buffer example:
	" :edit %%Pr<Tab>
	cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

	nnoremap <leader>ycl :let @*=expand("%").":".line(".")<CR>

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
	" noremap <F6> :if exists("g:syntax_on") <Bar>
	" \	syntax off <Bar>
	" \ else <Bar>
	" \	syntax enable <Bar>
	" \ endif <CR>

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

	" Keep cursor in place when joining lines
	" https://sanctum.geek.nz/arabesque/vim-annoyances/
	" nnoremap J mzJ`z
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

" Plist Files {
	augroup plists
		autocmd!
		autocmd BufReadCmd *.cat call plist#Read(1) | call plist#ReadPost()
	augroup end
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

		highlight SpellBad term=underline cterm=underline
		highlight SpellCap term=underline cterm=underline
		highlight SpellRare term=underline cterm=underline
		highlight SpellLocal term=underline cterm=underline

		" highlight SpecialKey ctermfg=66 ctermbg=236 cterm=bold

		" set term=builtin_ansi	" Make arrow and other keys work
		" let g:solarized_termcolors=256
		" let g:solarized_termtrans=1
		" let g:solarized_
	endif
" }

" NerdTree {
	let g:NERDTreeQuitOnOpen=1
	nmap <F12> :NERDTreeToggle <CR>
	noremap <leader>n :NERDTreeFind<CR>
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
	autocmd BufNewFile,BufRead *.rfc setlocal filetype=markdown
" Avro files
" 	autocmd BufNewFile,BufRead *.avsc setlocal filetype=json	"avro file
" 	autocmd BufNewFile,BufRead *.avdl setlocal filetype=idl	"avro file
" "	autocmd BufNewFile,BufRead *.json set filetype=json
"
" 	autocmd BufNewFile,BufRead *.ctmpl setlocal filetype=gotexttmpl
" 	autocmd BufNewFile,BufRead *.sh.tpl setlocal filetype=gotexttmpl
" 	autocmd BufNewFile,BufRead *.gv setlocal filetype=dot
" 	autocmd BufNewFile,BufRead *.mod setlocal filetype=gomod
" 	autocmd BufNewFile,BufRead *.bdy setlocal filetype=sql
" 	autocmd BufNewFile,BufRead *.fnc setlocal filetype=sql
" 	autocmd BufNewFile,BufRead *.prc setlocal filetype=sql
" 	autocmd BufNewFile,BufRead *.spc setlocal filetype=sql
" 	autocmd BufNewFile,BufRead *.trg setlocal filetype=sql
" 	" autocmd BufNewFile,BufRead *.
augroup END
" }

" Open files from quickfix into tabs
" set switchbuf+=usetab,newtab

" Functions {
	function! ToggleBg()
		if &background == 'dark'
			set bg=light
		else
			set bg=dark
		endif
	endfunc

	" Fun with numbers
	function! ToggleNumbers()
		if(&relativenumber == 1)
			" set number
			set norelativenumber
		else
			" set nonumber
			set relativenumber
		endif
	endfunc

	" Capture ex command output
	" From https://vim.fandom.com/wiki/Capture_ex_command_output
	"
	" Example usage
	" 	:TabMessage highlight
	function! TabMessage(cmd)
		redir => message
		silent execute a:cmd
		redir END
		if empty(message)
			echoerr "no output"
		else
			" use "new" or "vnew" instead of "tabnew" below if you prefer split windows instead of tabs
			" tabnew
			vnew
			setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
			silent put=message
		endif
	endfunction
	command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)


	function! s:DecoratedYank()
    	redir @n | silent! :'<,'>number | redir END
    	let filename=expand("%")
    	let decoration=repeat('-', len(filename)+1)
    	let @*=decoration . "\n" . filename . ':' . "\n" . decoration . "\n" . @n
	endfunction
	vnoremap <C-y> :call <SID>DecoratedYank()<CR>

	" Toggle todo list window
	" nnoremap <F4> :TODOToggle<CR>
	" command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
	" command Todo execute 'silent Ggrep! TODO\|FIXME'
	command Todo Ggrep 'mgaffney' | copen

	" Toggle background between dark and light
	nnoremap <F2> :call ToggleBg()<cr>
	nnoremap <F3> :call ToggleNumbers()<cr>
	nnoremap <F4> :ToggleWhitespace<cr>
	nnoremap <F5> :Todo<cr>
	" F6 is defined in after/ftplugin/go.vim
	" F7 is defined in after/ftplugin/go.vim


	" command! -complete=shellcmd -nargs=+ Shell call s:TmpShellOutput(<q-args>)
	" function! s:TmpShellOutput(cmdline) abort
	" 	if bufexists('tmplog')
	" 		call deletebufline('tmplog', 1, '$')
	" 	else
	" 		call bufadd('tmplog')
	" 		call setbufvar('tmplog', "buftype", "nofile")
	" 		call setbufvar('tmplog', "filetype", "")
	" 	endif
	" 	" let logjob = job_start(execute("!bash " . a:cmdline),
	" 	if has("nvim")
	" 		let logjob = jobstart(["/bin/bash", "-c", a:cmdline],
	" 					\ {'out_io': 'buffer', 'out_name': 'tmplog', 'out_msg': ''})
	" 	else
	" 		let logjob = job_start(["/bin/bash", "-c", a:cmdline],
	" 					\ {'out_io': 'buffer', 'err_io': 'buffer', 'out_name': 'tmplog', 'err_name': 'tmplog', 'out_msg': ''})
	" 	endif
	" 	let winnr = win_getid()
	" 	vert sbuffer tmplog
	" 	setlocal wrap
	" 	wincmd L
	" 	60 wincmd |
	" 	if win_getid() != winnr
	" 		call win_gotoid(winnr)
	" 	endif
	" endfunction
    "
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
		\ },
		\ '*.sql': {
		\   '*.up.sql': {
		\       'alternate': '{}.down.sql',
		\       'type': 'source'
		\   },
		\   '*.down.sql': {
		\       'alternate': '{}.up.sql',
		\       'type': 'source'
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
	" From https://jesseleite.com/posts/2/its-dangerous-to-vim-alone-take-fzf
	" {
		" File Finder
		nmap <Leader>ff :GFiles<CR>
		nmap <Leader>fF :Files<CR>

		" Buffer Finder
		" Here I've mapped <Leader>b to search for open buffers, and <Leader>h to
		" search buffer history.
		nmap <Leader>fb :Buffers<CR>
		nmap <Leader>fH :History<CR>
		" These two make it easy to switch between buffers, and order their results by
		" most recent so you can easily switch between your two most recent files
		" without being required to enter a search query.

		" Tag Finder
		" Here I've mapped <Leader>t to search for tags in current buffer, and
		" <Leader>T to search for tags across project
		nmap <Leader>ft :BTags<CR>
		nmap <Leader>fT :Tags<CR>
		" The former doesn't require a tags file, and is a great alternative to
		" packages like tagbar because it's often quicker to fuzzy search for a method
		" name, than it is to navigate your way through a second window. The latter is
		" extremely powerful in combination with a package like gutentags, where
		" searching for indexpostcon will jump you to the index method of your
		" PostController.

		" Line Finder
		" Here I've mapped <Leader>l to search for lines in current buffer, <Leader>L
		" to search for lines in loaded buffers, and <Leader>' to search for marked
		" lines.
		nmap <Leader>fl :BLines<CR>
		nmap <Leader>fL :Lines<CR>
		nmap <Leader>f' :Marks<CR>
		" Honestly, you will get more power out of / and ag, but they require more
		" thought because they aren't fuzzy searches. Being able to fuzzy search
		" through both marked and unmarked lines is fast and forgiving. These can also
		" prove useful when tags aren't available (eg. in .vue components or plain
		" .txt files).

		" Project Finder
		nmap <Leader>fa :Ag<Space>
		" When you need project searching power, most people look to search wrappers
		" like ack.vim. However, these wrappers generally expect you to specify your
		" searchable path before seeing the results.

		" Fzf's :Ag allows you to focus on your search query first, then narrow down
		" results in realtime using the same extended search mode syntax available to
		" all of fzf's fuzzy finders. Hitting Enter on a single result will open that
		" file, skipping the quickfix window altogether. If you are doing a larger
		" refactor, you can Tab to select multiple results, ALT-A to select all
		" results, then Enter to populate the quickfix window.

		" It's an incredibly powerful workflow, and my only beef is that it doesn't
		" allow you to pass command line options to ag out-of-the-box ...but it's
		" okay, because I wrote a plugin for that 🚜 If you are interested in learning
		" more about my project searching workflow, I wrote about it here!

		" Help Finder
		nmap <Leader>fh :Helptags!<CR>
		" Sometimes navigating Vim's :help documentation can be painful. Finding the
		" right article can be difficult. Fzf's :Helptags improves this experience,
		" especially when you run it with a bang ! to view results in fullscreen
		" (which by the way, also works on fzf's other commands).

		" Fuzzy search defined commands, whether they be user defined, plugin defined,
		" or native commands:
		nmap <Leader>fc :Commands<CR>

		" Fuzzy search through :command and /search history:
		nmap <Leader>f: :History:<CR>
		nmap <Leader>f/ :History/<CR>

		" Fuzzy search key mappings, which is great for checking against
		" current mappings before defining a new one:
		nmap <Leader>fm :Maps<CR>

		" Fuzzy search filetype syntaxes, and hit Enter on a result to set
		" that syntax on the current buffer:
		nmap <Leader>fs :Filetypes<CR>

		" Git Commit Finder
		" Fuzzy search Git commits
		nmap <Leader>fgc :Commits<CR>
		" Fuzzy search Git commits for the current buffer; visual-select lines
		" to track changes in the range
		nmap <Leader>fgC :BCommits<CR>

		" Fuzzy search Go declarations in the current package.
		" Defined in after/ftplugin/go.vim but referencing to prevent a
		" duplicate mapping from being defined.
		" Think 'find declarations'
		" nmap <Leader>fd :GoDeclsDir<CR>

		nmap <C-]> <Plug>(fzf_tags)
		noreabbrev <expr> ts getcmdtype() == ":" && getcmdline() == 'ts' ? 'FZFTselect' : 'ts'
	" }

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
	command! -bang -nargs=* Rg
		\ call fzf#vim#grep(
		\   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
		\   <bang>0 ? fzf#vim#with_preview('up:60%')
		\           : fzf#vim#with_preview('right:50%:hidden', '?'),
		\   <bang>0)

	" let g:fzf_files_options =
		" \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'
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
	" command! -bang -nargs=* Find
		" \ call fzf#vim#grep(
		" \ 'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color=always '.shellescape(<q-args>), 1, <bang>0)

" }

" Create parent directories {
	" :h ++p
	" Auto-create parent directories (except for URIs "://").
	au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif
" }

" plist {
	" Only enable this setting when creating a new plist file.
	" If this is not set when creating a new plist file an error will occur
	" and the new file will not be saved.
	" let g:plist_save_format = 'xml'
" }

" Colors for headings {

	" if &background ==# 'dark'
	" 	highlight Heading1 guifg=#ffffb2 guibg=#002b36
	" 	highlight Heading2 guifg=#fed976 guibg=#002b36
	" 	highlight Heading3 guifg=#feb24c guibg=#002b36
	" 	highlight Heading4 guifg=#fd8d3c guibg=#002b36
	" 	highlight Heading5 guifg=#f03b20 guibg=#002b36
	" 	highlight Heading6 guifg=#bd0026 guibg=#002b36
	" else
	" 	highlight Heading1 guifg=#ffffb2 guibg=#fdf6e3
	" 	highlight Heading2 guifg=#fed976 guibg=#fdf6e3
	" 	highlight Heading3 guifg=#feb24c guibg=#fdf6e3
	" 	highlight Heading4 guifg=#fd8d3c guibg=#fdf6e3
	" 	highlight Heading5 guifg=#f03b20 guibg=#fdf6e3
	" 	highlight Heading6 guifg=#bd0026 guibg=#fdf6e3
	" endif

" }
" Add Lua configuration
"

set redrawtime=0

if has('nvim')
	" source $HOME/.vim/init.lua.vim
endif

	" nnoremap <C-k> <C-W><C-K>
" vim:tw=78:ts=4:sw=4:norl:
