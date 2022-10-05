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

let mapleader = " " " map leader to Space
let g:NERDCustomDelimiters = { 'c': { 'left': '// ' }}

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
map <leader>tm :FloatermNew! cd %:p:h<CR>

"Plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'commit':'d98f896' }
call plug#end()

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

command! FZF FloatermNew fzf

colorscheme gruvbox
set background=dark
