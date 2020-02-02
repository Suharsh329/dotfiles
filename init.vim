call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-markdown'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'vim-syntastic/syntastic'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'tpope/vim-surround'

Plug 'airblade/vim-gitgutter'

call plug#end()

set background=dark

colorscheme gruvbox

let g:gruvbox_contrast_dark = 'hard'
let g:lightline ={}
let g:lightline.colorscheme = 'gruvbox'

let g:deoplete#enable_at_startup = 1

set termguicolors

set hidden

set spell

set clipboard=unnamed

set wildmenu

set backspace=indent,eol,start

set ttyfast

set gdefault

set encoding=utf-8 nobomb

set binary
set noeol

set number

syntax on

set tabstop=4
set shiftwidth=4

set lcs=tab:\|\ ,trail:·,nbsp:_
set list

set hlsearch

set ignorecase

set incsearch

set laststatus=2

set mouse=a

set noerrorbells

set nostartofline

set ruler

set shortmess=atI

set title

set showcmd

set scrolloff=3
