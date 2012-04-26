set guifont=Consolas:h13
set background=light
colorscheme solarized

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif
