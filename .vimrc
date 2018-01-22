set history=500

set autoread

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

command W w !sudo tee % > /dev/null

set so=7

let $LANG='en'
set langmenu=en

set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.DS_Store

set ruler

set cmdheight=2

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase

set smartcase

set hlsearch

set incsearch

set lazyredraw

set magic

set showmatch
set number
set mat=2

set noerrorbells
set novisualbell
set t_vb=
set tm=500

" extra left margin
set foldcolumn=1

syntax enable

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark

set encoding=utf8

set ffs=unix,dos,mac


set noswapfile
set nobackup
set nowb

set expandtab

set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap
