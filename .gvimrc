if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandTFlush<cr>\|:CommandT<cr>
endif
set guioptions=-t
set guioptions-=r

" themes and pretty stuff
colorscheme pastel
set background=dark

" use 12pt Meslo LG M
set guifont=Meslo\ LG\ M:h12

" better line-height
set linespace=4

" disable cursor blinking
" set guicursor=a:blinkon0

set guicursor+=n-v-c:ver96