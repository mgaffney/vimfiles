runtime bundle/vim-pathogen/autoload/pathogen.vim

"" Pathogen plugin
call pathogen#infect()

set nocompatible                " choose no compatibility with legacy vi
syntax enable
"set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
runtime macros/matchit.vim

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent

set clipboard+=unnamed          " Yanks go on clipboard instead.
set autowrite                   " Writes on make/shell commands

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Color
"set background=light
set background=dark

set ruler
set laststatus=2
set showmatch
set showmode

" set statusline
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%t\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\             " offset
set statusline+=%<%P                         " Percentage of file

"set statusline=%<%t%h%m%r\ filetype:%Y\ %a\ %-22.30{strftime(\"%c\")}%=0x%B\ line:%l,\ \ col:%c%V\ %P
"set relativenumber              "Show the line number relative to the line with the cursor in front of each line. 
set nu
set pastetoggle=<F2>

let g:CommandTMaxHeight=20
let mapleader = ","
"let g:netrw_browse_split=2
let g:netrw_liststyle=1
let g:netrw_list_hide="^\.git*,^\.rvmrc,\.swp"
compiler ruby
nnoremap <f5> :!ctags -R<CR>

" get Vim to search all gems in your current RVM gemset (requires pathogen.vim)
autocmd FileType ruby let &l:tags = pathogen#legacyjoin(pathogen#uniq(
      \ pathogen#split(&tags) +
      \ map(split($GEM_PATH,':'),'v:val."/gems/*/tags"')))
