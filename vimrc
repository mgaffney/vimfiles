runtime bundle/vim-pathogen/autoload/pathogen.vim

"" Pathogen plugin
call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color
"color desert
"set background=light
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"colorscheme solarized

"set nu
"set background=dark
"set ts=2
set ruler
"set sm
"set hlsearch
"set nois

"set nocompatible
"syntax enable
"set encoding=utf-8
"set showcmd
"filetype plugin indent on

"set background=dark
"set tabstop=4 set ruler
set showmatch
"set hlsearch
"set incsearch
set autoindent
set showmode
"set shiftwidth=4
"set font=Consolas
