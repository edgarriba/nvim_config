" ===== PLUGINS  ====
" vim-plug
call plug#begin('~/.config/nvim/plugins')

" Make sure you use single quotes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'nicoraffo/conque'
Plug 'valloric/YouCompleteMe'
Plug 'qpkorr/vim-bufkill'

call plug#end()

" Set search
set incsearch

" Show line numbers
set number

" Syntax highlight setting
syntax enable
syntax on

" Set encoding to utf-8
set encoding=utf-8

" Tab and indent settings
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

"Setup NerdTree"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"Switch between NerdTree tabs"
map <TAB> :BF<CR>
map <S-TAB> :BB<CR>

" Use leader F4 to call Nerdtree
map <C-t> :NERDTreeToggle<CR>

map <C-c> :BD<CR>
map <C-n> :BN<CR>

let NERDTreeAutoDeleteBuffer = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Delete spaces after each line
nnoremap <F2> :%s/\s\+$//g <CR> :nohlsearch <CR>

let g:ycm_global_ycm_extra_conf = '/home/eriba/.config/nvim/.ycm_extra_conf.py'
