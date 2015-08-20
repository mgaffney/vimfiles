" Environment {
	" Basics {
			set nocompatible			" choose no compatibility with legacy vi must
	" }

	" Setup Vundle Support {
		filetype off
		if !isdirectory(expand("~/.vim/bundle/Vundle.vim/.git"))
			!git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
		endif
		set runtimepath+=~/.vim/bundle/Vundle.vim
		call vundle#begin()
		Plugin 'gmarik/Vundle.vim'	" let Vundle manage Vundle, required

" Keep Plugin commands between vundle#begin/end. 

" Vim Applications (?)
" Plugin 'itchyny/calendar.vim'
	" let g:calendar_google_calendar = 1
	" let g:calendar_clock_12hour=1
	" let g:calendar_view="day"
	" nnoremap gec :Calendar -split=vertical -position=topright -width=40<cr>

" Git
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'

	" Fugitive Mappings
	nnoremap gst :Gstatus<CR>
	nnoremap gsl :Glog<CR>
	nnoremap gsd :Gdiff<CR>
	nnoremap gsb :Gblame<CR>
	nnoremap gsw :Gwrite<CR>
	nnoremap gsC :Gcommit<CR>
	nnoremap gscd :Gcd<Bar>pwd<CR>
	nnoremap gsld :Glcd<Bar>pwd<CR>

Plugin 'airblade/vim-gitgutter'

	" vim-gitgutter
	let g:gitgutter_diff_args = '-w' "Ignore whitespaces

" Plugin 'gregsexton/gitv'

" Colors
Plugin 'mgaffney/vim-colors-solarized'
" Plugin 'tpope/vim-vividchalk'
" Plugin 'morhetz/gruvbox'
" Plugin 'nanotech/jellybeans.vim'
" Plugin 'tomasr/molokai'
" Plugin 'chriskempson/base16-vim'

" tmux
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'

" Completion
" Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
	"SuperTab
	let g:SuperTabDefaultCompletionType = "context"
	let g:SuperTabClosePreviewOnPopupClose = 1
	let g:SuperTabLongestHighlight = 1

" Snips
Plugin 'SirVer/ultisnips'
	" ultisnips
	let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsListSnippets="<c-tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-j>"
	let g:UltiSnipsJumpBackwardTrigger="<c-k>"
	" let g:UltiSnipsExpandTrigger="<D-j>"
	" let g:UltiSnipsExpandTrigger="<CR>"
	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit="vertical"
	" ges - Go Edit Snippets
	nnoremap ges :UltiSnipsEdit<CR>

" Plugin 'honza/vim-snippets'

if executable('ag')
  Plugin 'rking/ag.vim'
elseif executable('ack')
  Plugin 'mileszs/ack.vim'
endif

" Text-objects
Plugin 'kana/vim-textobj-user'
Plugin 'unblevable/quick-scope'

" Insert into your .vimrc after quick-scope is loaded.
" Obviously depends on <https://github.com/unblevable/quick-scope> being installed.
" https://gist.github.com/cszentkiralyi/dc61ee28ab81d23a67aa
" Thanks to @VanLaser for cleaning the code up and expanding capabilities to include e.g. `df`

let g:qs_enable = 0
let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]

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

for i in g:qs_enable_char_list
	execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
endfor


" Status line
Plugin 'bling/vim-airline'
	" vim-airline
	let g:airline_powerline_fonts=1
	let g:airline#extensions#hunks#enabled = 0
	let g:airline#extensions#tabline#enabled = 0
	let g:airline#extensions#tabline#show_buffers = 0
	" let g:airline#extensions#tabline#fnamemod = ':p:.'
	let g:airline#extensions#tabline#fnamemod = ':p:t'
	" let g:airline#extensions#tabline#fnamemod = ':t'
	let g:airline#extensions#bufferline#enabled = 0
	let g:airline#extensions#whitespace#enabled = 0
	

" Fuzzy file, buffer, mru, tag, etc finder.
" Plugin 'kien/ctrlp.vim'

" Vim Helpers 
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-characterize'
" Plugin 'tpope/vim-commentary'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-afterimage'
" Plugin 'nelstrom/vim-qargs'
Plugin 'vim-scripts/camelcasemotion'
Plugin 'scrooloose/syntastic'
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_always_populate_loc_list = 1

" Plugin 'thinca/vim-quickrun'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-abolish'

" Tags
" Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'

" Unix Helpers
Plugin 'tpope/vim-eunuch'
" Unix systemd syntax
Plugin 'Matt-Deacalion/vim-systemd-syntax'

" Plist
Plugin 'darfink/vim-plist'

" Go
Plugin 'fatih/vim-go'
" let g:go_def_mapping_enabled = 0
" geg - Go Edit Go.vim file
nnoremap geg :tabnew $HOME/.vim/after/ftplugin/go.vim<cr>

" Plugin 'cespare/vim-go-templates'

" Docker
" Plugin 'honza/dockerfile.vim'
Plugin 'ekalinin/Dockerfile.vim'

" Ruby
" Plugin 'tpope/vim-bundler'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-rake'
" Plugin 'tpope/vim-rvm'
" Plugin 'tpope/vim-endwise'
" Plugin 'nelstrom/vim-textobj-rubyblock'
" Plugin 'vim-ruby/vim-ruby'

" Java
" Plugin 'tpope/vim-classpath'
" Plugin 'tfnico/vim-gradle'

" JavaScript 
" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'mgaffney/vim-json'
" Plugin 'pangloss/vim-javascript'
" Plugin 'wookiehangover/jshint.vim'
" Plugin 'kennethzfeng/vim-raml'
Plugin 'tpope/vim-jdaddy'

" Semantic Web
" Plugin 'seebi/semweb.vim'

" Cassandra
" Plugin 'elubow/cql-vim'
Plugin 'veegee/cql-vim'


" Other Programming Languages and Filetypes
" Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-markdown'
" Plugin 'motus/pig.vim'
" Plugin 'vim-scripts/rfc-syntax'

" Diagrams
" Plugin 'wannesm/wmgraphviz.vim'
" Plugin 'aklt/plantuml-syntax'

" Python
" Plugin 'xieyu/pyclewn'

Plugin 'yuratomo/w3m.vim'

" Local plugins
Plugin 'file:///Users/mike/sandbox/vim-myplugins/vim-cheatsheet'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

		" runtime bundle/vim-pathogen/autoload/pathogen.vim
		" call pathogen#infect()
		" silent! call pathogen#helptags()
		" Run :Helptags after installing or updating bundles

		" set sessionoptions-=options " Make sessions Pathogen friendly
	" }
" }

" General {
	syntax enable					" syntax enable keeps your current color settings. :syntax
	set background=dark				" Assume a dark background
	filetype plugin indent on		" load file type plugins + indentation
	set encoding=utf-8				" The encoding displayed
	" set fileencoding=utf-8			" The encoding written to a file
"	scriptencoding utf-8	

	set shortmess+=filmnrxoOtT		" abbrev. of messages (avoids 'hit enter')
	set virtualedit=onemore			" allow for cursor beyond last character
"	set history=2000
	set clipboard+=unnamed			" Yanks go on clipboard instead.
	set autowrite					" Writes on make/shell commands
	set cursorline 					" Highlight the line the cursor is on
	"set grepprg=ack\ --nogroup\ --column\ $*
	"set grepformat=%f:%l:%c:%m

	" Setting up the directories {
		"set undofile
"		set undolevels=1000
"		set undoreload=10000
"		 set nrformats=				 " sets number formats to decimal so 007 <C-a> results in 008.
	" }
" }

" Vim UI {
	colorscheme solarized
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
		set statusline=			" clear the statusline for when vimrc is reloaded
		set statusline=%<%f\				" Filename
		set statusline+=%w%h%m%r " Options
		set statusline+=\ %{fugitive#statusline()}	" Git Hotness
		set statusline+=\ [%{&ff}/%Y]			" filetype
		"set statusline+=\ [%{getcwd()}]			" current dir
		"set statusline+=\ [A=\%03.3b/H=\%02.2B]	" ASCII / Hexadecimal value of char
		set statusline+=%=													 " right align
		set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
		set statusline+=%-14.(%l,%c%V%)\ %p%%		" Right aligned file nav info
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
	set smarttab        " sw at the start of the line, sts everywhere else
	set timeoutlen=1200 " A little bit more time for macros
	set ttimeoutlen=50  " Make Esc work faster

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
"	set nowrap				" do not wrap long lines
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

	map  <F1>   <Esc>
	map! <F1>   <Esc>

	" Visually select the text that was last edited/pasted
	" Suggestion from http://vimcasts.org/episodes/bubbling-text/
	nmap gV `[v`]

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

	" Edit cheatsheet
	nnoremap <leader>ec :tabnew $HOME/.vim/bundle/vim-cheatsheet/doc/cheatsheet.txt<cr>

	" Move visual block
	vnoremap J :m '>+1<CR>gv=gv
	vnoremap K :m '<-2<CR>gv=gv

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
		nmap … :nohls<CR>
	endif

	"The default leader is '\', but many people prefer ',' as it's in a standard
	"location
	"let mapleader = ','
	" Yank from the cursor to the end of the line, to be consistent with C and D.
	nnoremap Y y$


	" add easy date insertion
	" imap <Leader>ds     <C-R>=strftime("%A %B %d, %Y")<CR>
	imap <Leader>ds     <C-R>=strftime("%A %B %e, %Y")<CR>
	imap <Leader>ymd    <C-R>=strftime("%Y-%m-%d")<CR>
	imap <Leader>mdy    <C-R>=strftime("%m/%d/%y")<CR>
	imap <Leader>Mdy    <C-R>=strftime("%b %d, %Y")<CR>
	imap <Leader>hms    <C-R>=strftime("%T")<CR>

	" Insert the current date e.g.: Friday November 22, 2013
	inoremap \zd <C-R>=strftime("%A %B %e, %Y")<CR>
	" Insert the current time e.g.: 1.12 PM
	inoremap \zt <C-R>=strftime("%l.%M %p")<CR>
	" inoremap \zt <C-R>=strftime("%r")<CR>
	" Insert the current date and time e.g.: Friday November 22, 2013 • 1.12 PM 
	inoremap \zs <C-R>=strftime("%A %B %e, %Y • %l.%M %p")<CR>

	" Toggle background between dark and light
	map <F2> :call ToggleBg()<CR>
	
	" Make program
	nnoremap <F5> :w<CR> :make<CR>
	" Move current line to end of file but keep cursor in current location
	nnoremap <F3> :.m$<CR> `.
	" nnoremap <F5> :silent make<CR>
	" Toggle TagList window
	" nnoremap <silent> <F8> :TlistToggle<CR>

	""" Code folding options
	 nmap <leader>f0 :set foldlevel=0<CR>
	 nmap <leader>f1 :set foldlevel=1<CR>
	 nmap <leader>f2 :set foldlevel=2<CR>
	 nmap <leader>f3 :set foldlevel=3<CR>
	 nmap <leader>f4 :set foldlevel=4<CR>
	 nmap <leader>f5 :set foldlevel=5<CR>
	 nmap <leader>f6 :set foldlevel=6<CR>
	 nmap <leader>f7 :set foldlevel=7<CR>
	 nmap <leader>f8 :set foldlevel=8<CR>
	 nmap <leader>f9 :set foldlevel=9<CR>

	"insert random string
	map <leader>r mx:r! od -vAn -N16 -tx4 < /dev/urandom<CR>ddk:s/\s//<CR>:nohlsearch<CR>"zyiwdd`x"zP

	" Shortcuts
	" Change Working Directory to that of the current file
	cmap cwd lcd %:p:h
	cmap cd. lcd %:p:h

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
	cmap w!! w !sudo tee % >/dev/null

	" Toggle Tagbar
	nmap <F8> :TagbarToggle<CR>

	" Shortcut to toggle `set syntax` - helpful when writing VIM help
	map <F6> :if exists("g:syntax_on") <Bar>
	\	syntax off <Bar>
	\ else <Bar>
	\	syntax enable <Bar>
	\ endif <CR>

	" Disable the arrow keys (good for learning vim)
	noremap <Up> <Nop>
	noremap <Down> <Nop>
	noremap <Left> <Nop>
	noremap <Right> <Nop>
	
	" Enable [[ and ]] even when the { or } don't start in the first column
	map [[ ?{<CR>w99[{…
	map ][ /}<CR>b99]}…
	map ]] j0[[%/{<CR>…
	map [] k$][%?}<CR>…

	" Highlight word under cursor but do not jump to the next one
	" nnoremap * *``
" }

" Filetype settings {

	autocmd Filetype gitcommit setlocal spell textwidth=72 formatoptions+=t

" }

" Plugins {

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
	"let g:netrw_browse_split=2
	let g:netrw_liststyle=1
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
	au BufReadCmd *.jar,*.xpi,*.sar,*.war,*.ear,*.mar,*.aar,*.ipa,*.epub call zip#Browse(expand("<amatch>"))
" }

" man pages {
	" runtime ftplugin/man.vim
"}
" GUI Settings {
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		"set guifont=Consolas:h13
		set guifont=Source\ Code\ Pro\ for\ Powerline:h12
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
		" set term=builtin_ansi	" Make arrow and other keys work
		" let g:solarized_termcolors=256
		" let g:solarized_termtrans=1
		" let g:solarized_
	endif
" }


" File Templates {
	autocmd BufNewFile *.sh 0r $HOME/.vim/templates/template.sh
	autocmd BufNewFile *.html 0r $HOME/.vim/templates/template.html
" }

" FileType Overrides {
	" let g:xml_syntax_folding=1
	" au FileType xml setlocal foldmethod=syntax

	au BufNewFile,BufRead *.md set filetype=markdown
"Avro files
	au BufNewFile,BufRead *.avsc set filetype=json
	au BufNewFile,BufRead *.avdl set filetype=idl
"	au BufNewFile,BufRead *.json set filetype=json
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


" vim:tw=78:ts=4:sw=4:norl:
