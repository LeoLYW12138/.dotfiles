set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax enable

"Sets
set number
set nohlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set laststatus=2 "status bar always on
set encoding=utf-8
set colorcolumn=80
set showcmd
set showmode
set showmatch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
highlight ColorColumn ctermbg=236 guibg=lightgrey

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
colorscheme gruvbox
set background=dark

