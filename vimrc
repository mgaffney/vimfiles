if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-abolish'
	Plug 'tpope/vim-characterize'
	Plug 'tpope/vim-dadbod'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-eunuch'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-git'
	Plug 'tpope/vim-markdown'
	Plug 'tpope/vim-obsession'
	Plug 'tpope/vim-projectionist'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-rhubarb'
	Plug 'tpope/vim-scriptease'
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-speeddating'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-vinegar'
	Plug 'junegunn/gv.vim'
	Plug 'junegunn/goyo.vim'
	Plug 'junegunn/limelight.vim'
	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/fzf.vim'
	Plug '/opt/homebrew/opt/fzf'
	Plug 'github/copilot.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'idanarye/vim-merginal'
	Plug 'aymericbeaumet/vim-symlink'
	Plug 'moll/vim-bbye' " optional dependency
	Plug 'mbbill/undotree'
	if has('nvim')
		Plug 'lifepillar/vim-solarized8', { 'dir': '~/.vim/plugged/vim-solarized8-neovim', 'branch': 'neovim' }
	else
		Plug 'lifepillar/vim-solarized8'
	endif
	if exists('$TMUX')
		Plug 'christoomey/vim-tmux-navigator'
		Plug 'tmux-plugins/vim-tmux'
	endif
	Plug 'SirVer/ultisnips'
	Plug 'aklt/plantuml-syntax'
	Plug 'cespare/vim-toml'
	Plug 'chrisbra/csv.vim'
	Plug 'darfink/vim-plist'
	Plug 'davidhalter/jedi-vim'
	Plug 'ekalinin/Dockerfile.vim'
	Plug 'elzr/vim-json'
	Plug 'embear/vim-localvimrc'
	Plug 'guns/xterm-color-table.vim'
	Plug 'hashivim/vim-terraform'
	Plug 'kshenoy/vim-signature'
	Plug 'leafgarland/typescript-vim'
	Plug 'lifepillar/pgsql.vim'
	Plug 'majutsushi/tagbar'
	Plug 'mhinz/vim-grepper'
	Plug 'mileszs/ack.vim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'ntpeters/vim-better-whitespace'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-tree/nvim-web-devicons' " optional dependency for diffview.nvim
	Plug 'preservim/nerdtree'
	Plug 'simrat39/rust-tools.nvim'
	Plug 'sindrets/diffview.nvim'
	Plug 'tomswartz07/vim-pg-explain-syntax'
	Plug 'tomtom/tcomment_vim'
	Plug 'uarun/vim-protobuf'
	Plug 'unblevable/quick-scope'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'vim-scripts/camelcasemotion'
	Plug 'vimwiki/vimwiki'
	Plug 'yegappan/taglist'
	Plug 'zackhsi/fzf-tags'
	Plug 'zimbatm/haproxy.vim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:solarized_term_italics = 0
let g:solarized_italics = 0
let g:sql_type_default = 'pgsql'

let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep', 'ag']
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
nnoremap <Leader>rg :Grepper -tool rg -grepprg rg -H --no-heading --vimgrep --sort path<CR>
nnoremap <Leader>vg :Grepper -tool rg -grepprg rg -H --no-heading --vimgrep --sort path -g '!vendor' -g '!website' -g '!ui'<CR>
set grepprg=internal

let wiki_1 = {}
let wiki_1.path = '~/vimwiki/'
let wiki_1.path_html = '~/vimwiki_html/'
let wiki_1.list_margin = 0
let wiki_1.auto_tags = 1
let wiki_1.auto_diary_index = 1
let wiki_1.nested_syntaxes = {'python': 'python', 'sh': 'sh',
			\ 'c': 'c', 'c++': 'cpp', 'go': 'go', 'bash': 'bash',
			\ 'zsh': 'zsh', 'sql': 'sql', 'hcl': 'hcl'}
let g:vimwiki_list = [wiki_1]
let g:vimwiki_global_ext = 0
let g:vimwiki_listsyms = ' ◔◑◕✓'
let g:vimwiki_listsym_rejected = '✘'
let g:vimwiki_dir_link = 'index'
let g:vim_json_syntax_conceal = 0
let g:markdown_fenced_languages = ['html', 'python',
	\ 'bash=sh', 'go', 'json', 'javascript', 'sql', 'zsh', 'vim']
let g:markdown_syntax_conceal = 0
let g:markdown_folding = 1

highlight ExtraWhitespace ctermbg=DarkBlue
let g:better_whitespace_filetypes_blacklist=['diff', 'git', 'gitcommit', 'unite', 'qf', 'help', 'proto', 'markdown', 'fugitive', 'html']
let g:strip_whitespace_confirm = 0
let g:strip_only_modified_lines = 1
let g:strip_whitespace_on_save = 1

noremap <leader>z :silent! :Goyo<CR>
let g:goyo_width = 100

command! DiffHistory call s:view_git_history()

function! s:view_git_history() abort
	Git difftool --name-only ! !^@
	call s:diff_current_quickfix_entry()
	copen
	nnoremap <buffer> <CR> <CR><BAR>:call <sid>diff_current_quickfix_entry()<CR>
	wincmd p
endfunction

function s:diff_current_quickfix_entry() abort
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
	11copen
	wincmd p
endfunction

nnoremap gst :vertical :G<CR>
nnoremap <leader>gll :vertical :G log<CR>
nnoremap <leader>glf :vertical :G log --name-only<CR>
nnoremap <leader>glm :vertical :G log --author="Michael Gaffney"<CR>
nnoremap <leader>glt :vertical :G log --author="Messier"<CR>

xmap <leader>ggy :GBrowse!<CR>
xmap <leader>ggp S]`>a()<ESC>hp
map <leader>gB :MerginalToggle<CR>

if exists('$TMUX')
	nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
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

xmap ga <Plug>(EasyAlign)
nmap yga <Plug>(EasyAlign)

let g:UltiSnipsExpandTrigger = "<nop>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"
nnoremap ges :UltiSnipsEdit!<CR>

augroup qs_colors
	autocmd!
	autocmd ColorScheme * highlight QuickScopePrimary guifg='#b58900' gui=reverse ctermfg=33 cterm=reverse
	autocmd ColorScheme * highlight QuickScopeSecondary guifg='#6c71c4' gui=reverse ctermfg=61 cterm=reverse " violet
augroup END

let g:qs_second_highlight = 0
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#obsession#indicator_text = '' " U+F130 (microphone)
let g:airline_symbols.notexists = ' ' "thinspace U+F059 (Question mark - as in 'where is it')
let g:airline_symbols.dirty = ' ' "thinspace + storm cloud
let g:airline_left_sep = '' " U+E0B0
let g:airline_right_sep = '' " U+E0B2
let g:airline_right_alt_sep = '' " U+E0B3
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_selenized_normal_green = 0
if exists('$TMUX')
	let g:airline#extensions#tmuxline#enabled = 0
endif

let g:terraform_fmt_on_save=0
let g:jedi#use_splits_not_buffers = "right"

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

if has("nvim-0.5.0") || has("patch-8.1.1564")
	set signcolumn=yes
else
	set signcolumn=yes
endif

if (has("termguicolors"))
	if !has("nvim")
		let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
		let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
	endif
	set termguicolors
endif

augroup solarized8_override
	autocmd!
augroup END

set background=dark				" Assume a dark background
colorscheme selenized
set encoding=utf-8				" The encoding displayed
scriptencoding utf-8
set nojoinspaces 				" One space between sentences not two
set shortmess+=cfilmnrxoOtT		" abbrev. of messages (avoids 'hit enter')
set virtualedit=onemore			" allow for cursor beyond last character
set history=10000
set clipboard+=unnamed			" Yanks go on clipboard instead.
set autowrite					" Writes on make/shell commands
set cursorline					" Highlight the line the cursor is on
set noerrorbells
set visualbell
set t_vb=

if !isdirectory($HOME."/.vim")
	call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
	call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir
set undofile

set showmode					" display the current mode

if has("balloon_eval") && has("unix")
	set ballooneval
endif

set number						" Make relative line 0 show the Line numbers on
set relativenumber				" Relative Line numbers on
set incsearch					" find as you type search
set hlsearch					" highlight search terms
set ignorecase					" case insensitive search
set smartcase					" case sensitive when uc present
set winminheight=0				" windows can be 0 line high
set smarttab		" sw at the start of the line, sts everywhere else
set timeoutlen=1200 " A little bit more time for macros
set ttimeoutlen=50	" Make Esc work faster
set wildmenu					" show list instead of just completing
set wildmode=longest,list:longest		 " tab completion like zsh's
set gdefault					" the /g flag on :s substitutions by default

highlight NonText guifg=#4a4a59 guibg=bg
highlight SpecialKey guifg=#4a4a59 guibg=bg
highlight Folded cterm=none gui=none
highlight FloatBorder guifg=#073642 guibg=#073642
highlight goSameId gui=reverse guifg=#268bd2

set completeopt-=preview
set nowrap				" do not wrap long lines
set autoindent			" indent at the same level of the previous line
set shiftround			" round indents to multiple of shiftwidth
set splitbelow
set splitright

set diffopt=filler,vertical
if has('nvim')
	set mouse=a
endif

nnoremap gV `[v`]

nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

nnoremap gf :vsp <cfile><CR>

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

nnoremap <silent> <leader>/ :nohlsearch<CR>
if exists(":nohls")
	nnoremap … :nohls<CR>
endif

nnoremap Y y$

nnoremap <leader>cfr :let @+=expand("%")<CR>
nnoremap <leader>cfa :let @+=expand("%:p")<CR>
nnoremap <leader>cff :let @+=expand("%:t")<CR>
nnoremap <leader>cfd :let @+=expand("%:p:h")<CR>

set foldlevelstart=0

nnoremap <Space> za
vnoremap <Space> za

nnoremap zO zczO

cnoremap cwd lcd %:p:h
cnoremap cd. lcd %:p:h

cnoremap cpwd lcd %:p:h/..
cnoremap cpd. lcd %:p:h/..

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

nnoremap <leader>ycl :let @*=expand("%").":".line(".")<CR>

vnoremap < <gv
vnoremap > >gv

cnoremap w!! w !sudo tee % >/dev/null

noremap <F1> <Esc>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F2> :call ToggleBg()<cr>
nnoremap <F3> :call ToggleNumbers()<cr>
nnoremap <F4> :ToggleWhitespace<cr>
nnoremap <F5> :Todo<cr>

noremap [[ ?{<CR>w99[{…
noremap ][ /}<CR>b99]}…
noremap ]] j0[[%/{<CR>…
noremap [] k$][%?}<CR>…

autocmd Filetype gitcommit setlocal spell textwidth=72 formatoptions+=t

runtime ftplugin/man.vim

let g:netrw_list_hide="^\.git*,^\.rvmrc,\.swp"

let g:WMGraphviz_output="png"

augroup zips
	autocmd!
	autocmd BufReadCmd *.jar,*.xpi,*.sar,*.war,*.ear,*.mar,*.aar,*.ipa,*.epub call zip#Browse(expand("<amatch>"))
augroup END

augroup plists
	autocmd!
	autocmd BufReadCmd *.cat call plist#Read(1) | call plist#ReadPost()
augroup end

if has('gui_running')
	set guifont=Source\ Code\ Pro\ Nerd\ Complete:h12
	set guifontwide=Source\ Code\ Pro\ Nerd\ Complete:h12
	set background=light
	if has("gui_macvim")
		macmenu &File.New\ Tab key=<nop>
	endif
	set guioptions-=T	" remove the toolbar
else
	highlight SpellBad term=underline cterm=underline
	highlight SpellCap term=underline cterm=underline
	highlight SpellRare term=underline cterm=underline
	highlight SpellLocal term=underline cterm=underline
endif

let g:NERDTreeQuitOnOpen=1
nmap <F12> :NERDTreeToggle <CR>
noremap <leader>n :NERDTreeFind<CR>

augroup templates
	autocmd!
	autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/template.'.expand("<afile>:e")
	autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge
augroup END

augroup fileconfigs
	autocmd!
	autocmd FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
	autocmd BufNewFile,BufRead *.rfc setlocal filetype=markdown
augroup END

function! ToggleBg()
	if &background == 'dark'
		set bg=light
	else
		set bg=dark
	endif
endfunc

function! ToggleNumbers()
	if(&relativenumber == 1)
		set norelativenumber
	else
		set relativenumber
	endif
endfunc

function! TabMessage(cmd)
	redir => message
	silent execute a:cmd
	redir END
	if empty(message)
		echoerr "no output"
	else
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

command Todo Ggrep 'mgaffney' | copen

function! CopyMatches(reg)
	let hits = []
	%s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/ge
	let reg = empty(a:reg) ? '+' : a:reg
	execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

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

nmap <Leader>ff :GFiles<CR>
nmap <Leader>fF :Files<CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>fH :History<CR>
nmap <Leader>ft :BTags<CR>
nmap <Leader>fT :Tags<CR>
nmap <Leader>fl :BLines<CR>
nmap <Leader>fL :Lines<CR>
nmap <Leader>f' :Marks<CR>
nmap <Leader>fa :Ag<Space>
nmap <Leader>fh :Helptags!<CR>
nmap <Leader>fc :Commands<CR>
nmap <Leader>f: :History:<CR>
nmap <Leader>f/ :History/<CR>
nmap <Leader>fm :Maps<CR>
nmap <Leader>fs :Filetypes<CR>
nmap <Leader>fgc :Commits<CR>
nmap <Leader>fgC :BCommits<CR>

nmap <C-]> <Plug>(fzf_tags)
noreabbrev <expr> ts getcmdtype() == ":" && getcmdline() == 'ts' ? 'FZFTselect' : 'ts'

command! -bang -nargs=* Rg
	\ call fzf#vim#grep(
	\   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
	\   <bang>0 ? fzf#vim#with_preview('up:60%')
	\           : fzf#vim#with_preview('right:50%:hidden', '?'),
	\   <bang>0)

au BufWritePre,FileWritePre * if @% !~# '\(://\)' | call mkdir(expand('<afile>:p:h'), 'p') | endif

set redrawtime=0
