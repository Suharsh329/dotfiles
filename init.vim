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
set termguicolors
colorscheme quantum

set hidden

let g:quantum_italics=1
let g:airline_theme='quantum'

"autocmd"

"NERDTree"
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Keyboard Shortcuts"
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <A-t> :belowright split<cr>:terminal<cr>
