" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()

" themes and pretty stuff
colorscheme pastel
set background=dark

let &t_Co=256                       " enable 256 colors in vim

syntax on                           " enable highlighting for syntax

" Oh, and man... never ever let Vim write a backup file! They did that in the 70's.
" Use modern ways for tracking your changes, for God's sake.
set nobackup
set noswapfile

set paste
set nocompatible					" Make Vim more useful
set encoding=utf-8 nobomb			" Use UTF-8 without BOM
set hidden                          " allow unsaved background buffers and remember marks/undo for them
set clipboard=unnamed               " make copy to system clipboard
set history=1000                    " remember more commands and search history
set undolevels=1000                 " use many muchos levels of undo
set title                           " change the terminal's title
set visualbell                      " don't beep
set noerrorbells                    " don't beep
set nowrap                          " don't wrap lines
set tabstop=4                       " a tab is four spaces
set shiftwidth=4                    " number of spaces to use for autoindenting
set shiftround                      " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=4
set expandtab
set autoindent                      " always set autoindenting on
set copyindent                      " copy the previous indentation on autoindenting
set number                          " always show line numbers
set showmatch                       " set show matching parenthesis
set ignorecase                      " ignore case when searching
set ignorecase smartcase            " make searches case-sensitive only if they contain upper-case characters
set smartcase                       " ignore case if search pattern is all lowercase,  case-sensitive otherwise
set smarttab                        " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                        " highlight search terms
set incsearch                       " show search matches as you type
set backspace=indent,eol,start      " allow backspacing over everything in insert mode
set laststatus=2
set cursorline                      " highlight current line
set showcmd                         " display incomplete commands
set scrolloff=3                     " keep more context when scrolling off the end of a buffer
set autoread                        " auto load files if vim detects they have been changed outside of Vim
" set showtabline=2
set wildmode=longest,list           " use emacs-style tab completion when selecting files, etc
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*.obj,.git,node_modules
set wildmenu                        " make tab completion for files/buffers act like bash
let mapleader=","                   " change the mapleader from \ to ,

" tweaks for powerline
set fillchars+=stl:\ ,stlnc:\
"let g:Powerline_symbols = 'fancy'

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Make j/k move to next visual line instead of physical line
" http://yubinkim.com/?p=6
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" make the TCOmment toggle <leader>c
map <leader>c gcc

" vim pipe filetypes
" screw local leader, just map it to regular leader
map <leader>r <localleader>r
map <leader>p <localleader>p
autocmd FileType javascript let b:vimpipe_command='node <(cat)'

" highlight trailing whitespace
" http://nvie.com/posts/how-i-boosted-my-vim/
"set list
set listchars=trail:.,extends:#,nbsp:.

" ruby path if you are using rbenv
" http://stackoverflow.com/questions/9341768/vim-response-quite-slow
let g:ruby_path = system('echo $HOME/.rbenv/shims')

" Easy window navigation
" http://nvie.com/posts/how-i-boosted-my-vim/
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"folds
set foldmethod=syntax
set foldlevelstart=20

" make it do . in visual mode
:vnoremap . :norm.<CR>

" makes :W act like :w (which should be a default)
command W w
