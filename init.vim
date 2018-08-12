call plug#begin('~/.config/nvim/plugged')
"Theme"
Plug 'tyrannicaltoucan/vim-quantum'

"Align items of different length"
Plug 'junegunn/vim-easy-align'

"Side navbar"
Plug 'scrooloose/nerdtree'

"Git plugin for side navbar"
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-fugitive'

"Distraction Free Mode"
Plug 'junegunn/goyo.vim'

"Bottom bar with file information"
Plug 'vim-airline/vim-airline'

"Find files"
Plug 'ctrlpvim/ctrlp.vim'

"Markdown plugin"
Plug 'tpope/vim-markdown'

"Autocomplete"
Plug 'Valloric/YouCompleteMe'


Plug 'vim-syntastic/syntastic'

"Add quotes, brackets etc to existing words"
Plug 'tpope/vim-surround'

"Show git changes next to line number"
Plug 'airblade/vim-gitgutter'

call plug#end()

set background=dark
colorscheme quantum
let g:quantum_italics=1
let g:airline_theme='quantum'

set termguicolors
set hidden
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=4
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Start scrolling three lines before the horizontal window border
set scrolloff=3

"autocmd"

"NERDTree"
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Keyboard Shortcuts"
"Toggle NERDTree"
map <silent> <C-n> :NERDTreeToggle<CR>
"Open terminal buffer"
nnoremap <silent> <A-t> :belowright split<cr>:terminal<cr>
nnoremap <silent> <A-g> :Goyo<CR>