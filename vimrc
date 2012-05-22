runtime bundle/vim-pathogen/autoload/pathogen.vim

"" Pathogen plugin
call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
"set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color
"set background=light
set background=dark

set ruler
set showmatch
set showmode

"set relativenumber              "Show the line number relative to the line with the cursor in front of each line. 
set nu
set pastetoggle=<F2>

let g:CommandTMaxHeight=20
let mapleader = ","
let g:netrw_browse_split=2
let g:netrw_liststyle=3

compiler ruby
nnoremap <f5> :!ctags -R<CR>

