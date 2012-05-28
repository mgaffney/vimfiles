" Environment {
	" Basics {
			set nocompatible								" choose no compatibility with legacy vi must
	" }

	" Setup Bundle Support {
	" The next two lines ensure that the ~/.vim/bundle/ system works
	
			runtime bundle/vim-pathogen/autoload/pathogen.vim
			call pathogen#infect()
			" silent! call pathogen#helptags()
	" }
" }

" General {
		set background=dark				" Assume a dark background
		filetype plugin indent on		" load file type plugins + indentation
		syntax enable					" syntax enable keeps your current color settings. :syntax
		scriptencoding utf-8	

		set shortmess+=filmnrxoOtT		" abbrev. of messages (avoids 'hit enter')
		set virtualedit=onemore			" allow for cursor beyond last character
		set history=2000
		set clipboard+=unnamed			" Yanks go on clipboard instead.
		set autowrite					" Writes on make/shell commands

		" Setting up the directories {
			"set undofile
			set undolevels=1000
			set undoreload=10000
		" }
" }

" Vim UI {
		colorscheme solarized
		set showmode					" display the current mode

		if has('cmdline_info')
			set ruler						" show the ruler
			set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)	" a ruler on steroids
			set showcmd						" show partial commands in status line and
										" selected characters/lines in visual mode
		endif

		if has('statusline')
			set laststatus=2
			" Broken down into easily includeable segments
			set statusline= 		" clear the statusline for when vimrc is reloaded
			set statusline=%<%f\ 				" Filename
			set statusline+=%w%h%m%r " Options
			set statusline+=\ %{fugitive#statusline()} 	" Git Hotness
			set statusline+=\ [%{&ff}/%Y] 			" filetype
			"set statusline+=\ [%{getcwd()}] 			" current dir
			"set statusline+=\ [A=\%03.3b/H=\%02.2B]	" ASCII / Hexadecimal value of char
			set statusline+=%= 													 " right align
			set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
			set statusline+=%-14.(%l,%c%V%)\ %p%% 		" Right aligned file nav info
		endif

		set backspace=indent,eol,start			" backspace for dummys
		set linespace=0					" No extra spaces between rows
		set nu						" Line numbers on
		set showmatch					" show matching brackets/parenthesis
		set incsearch					" find as you type search
		set hlsearch					" highlight search terms
		set winminheight=0				" windows can be 0 line high 
		set ignorecase					" case insensitive search
		set smartcase					" case sensitive when uc present
		set wildmenu					" show list instead of just completing
		set wildmode=list:longest,full			" command <Tab> completion, list matches, then longest common part, then all.
		set whichwrap=b,s,h,l,<,>,[,]			" backspace and cursor keys wrap to
		set scrolljump=5				" lines to scroll when cursor leaves screen
		set scrolloff=3					" minimum lines to keep above and below cursor
		set nofoldenable				" do not auto fold code
		set gdefault					" the /g flag on :s substitutions by default
		"set list
		" set listchars=tab:>.,trail:.,extends:#,nbsp:.	" Highlight problematic whitespace
		set listchars=tab:▸\ ,eol:¬			" Use the same symbols as TextMate for tabstops and EOLs
		"Invisible character colors
		highlight NonText guifg=#4a4a59 guibg=bg
		highlight SpecialKey guifg=#4a4a59 guibg=bg

" }

" Formatting {
	set nowrap			" wrap long lines
	set autoindent			" indent at the same level of the previous line
	set shiftwidth=4		" use indents of 4 spaces
	" set expandtab			" tabs are spaces, not tabs
	set tabstop=4			" an indentation every four columns
	set softtabstop=4 		" let backspace delete indent
	"set matchpairs+=<:>		" match, to be used with % 
	"set pastetoggle=<F12>		" pastetoggle (sane indentation on pastes)
	"set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
	" Remove trailing whitespaces and ^M chars
	"autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }




" Key (re)Mappings {

	"The default leader is '\', but many people prefer ',' as it's in a standard
	"location
	let mapleader = ','

	" Yank from the cursor to the end of the line, to be consistent with C and D.
	nnoremap Y y$

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

	"clearing highlighted search
	nmap <silent> <leader>/ :nohlsearch<CR>

	" Shortcuts
	" Change Working Directory to that of the current file
	cmap cwd lcd %:p:h
	cmap cd. lcd %:p:h

	" visual shifting (does not exit Visual mode)
	vnoremap < <gv
	vnoremap > >gv 

	" Fix home and end keybindings for screen, particularly on mac
	" - for some reason this fixes the arrow keys too. huh.
	map [F $
	imap [F $
	map [H g0
	imap [H g0

	" For when you forget to sudo.. Really Write the file.
	cmap w!! w !sudo tee % >/dev/null

	" Shortcut to rapidly toggle `set list`
	nmap <leader>l :set list!<CR>

	" Edit .vimrc file quickly
	nmap <leader>v :tabedit $MYVIMRC<CR>
" }


" Plugins {
	" netrw settings
	"let g:netrw_browse_split=2
	let g:netrw_liststyle=1
	let g:netrw_list_hide="^\.git*,^\.rvmrc,\.swp"

	" CommandT Window Height
	let g:CommandTMaxHeight=20

	" runtime macros/matchit.vim

	" Pathogen - this should be moved to a ruby filetype settings file
	" get Vim to search all gems in your current RVM gemset (requires pathogen.vim)
	autocmd FileType ruby let &l:tags = pathogen#legacyjoin(pathogen#uniq(
			\ pathogen#split(&tags) +
			\ map(split($GEM_PATH,':'),'v:val."/gems/*/tags"')))
" }



" GUI Settings {
	" GVIM- (here instead of .gvimrc)
	if has('gui_running')
		set guifont=Consolas:h13
		set background=light
		"colorscheme solarized
		if has("gui_macvim")
			macmenu &File.New\ Tab key=<nop>
			map <D-t> :CommandT<CR>
		endif
		set guioptions-=T	" remove the toolbar
		"set lines=40		" 40 lines of text instead of 24,
	else
		set term=builtin_ansi	" Make arrow and other keys work
	endif
" }

" Source the vimrc file after saving it
"if has("autocmd")
"	autocmd bufwritepost .vimrc source $MYVIMRC
"endif


"" Whitespace
""set nowrap											" don't wrap lines
""set tabstop=2 shiftwidth=2			" a tab is two spaces (or set this to 4)
"set expandtab										" use spaces, not tabs (optional)
""set backspace=indent,eol,start	" backspace through everything in insert mode
"set autoindent
"set smartindent


"" Searching
"set nohlsearch									" Turn off highlight matches - instead, use :set hls when needed
"set hlsearch										" highlight matches
"set incsearch										" incremental searching
"set ignorecase									" searches are case insensitive...
"set smartcase										" ... unless they contain at least one capital letter

"" Color

"if has("gui_running")
"	set background=light
"else
"	set background=dark
"endif

"set ruler
"set laststatus=2
"set showmatch

"set nofoldenable				"dont fold by default

" set statusline
" set statusline=		" clear the statusline for when vimrc is reloaded
" set statusline+=%-3.3n\											 " buffer number
" set statusline+=%t\													 " file name
" set statusline+=%h%m%r%w										 " flags
" set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
" set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
" set statusline+=%{&fileformat}]							 " file format
" set statusline+=%=													 " right align
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
" set statusline+=%b,0x%-8B\									 " current char
" set statusline+=%-14.(%l,%c%V%)\						 " offset
" set statusline+=%<%P												 " Percentage of file

"set statusline=%<%t%h%m%r\ filetype:%Y\ %a\ %-22.30{strftime(\"%c\")}%=0x%B\ line:%l,\ \ col:%c%V\ %P
"set relativenumber							 "Show the line number relative to the line with the cursor in front of each line. 
" set nu
" set pastetoggle=<F2>

" compiler ruby
" nnoremap <f5> :!ctags -R<CR>


"au BufNewFile,BufRead *.md set filetype=markdown

" Key mappings
" map - :Explore<cr>													" Pressing - brings up the File Explorer
" cmap w!! %!sudo tee > /dev/null %						" use :w!! to write to a file using sudo
" imap jj <esc>																" Insert Mode - jj to esc

" noremap <F4> :set hlsearch! hlsearch?<CR>		" Press F4 to toggle highlighting on/off, and show current value.



