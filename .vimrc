syntax on
filetype plugin indent on
syntax enable

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch
set hlsearch
filetype plugin indent on

" Make backspace work as in most other programs
set backspace=indent,eol,start

" leader configs
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader><c-h> :vertical resize +10<CR>
nnoremap <silent> <leader><c-l> :vertical resize -10<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>

" vim-plug configs
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'wincent/command-t'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/tomorrow-theme'
Plug 'kien/ctrlp.vim'
Plug 'ycm-core/YouCompleteMe'

call plug#end() 

" Colorscheme changes
let g:gruvbox_termcolors=16
colorscheme gruvbox
set background=dark

" Coloumn color changes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Lightline changes
set laststatus=2
set cmdheight=2

" NERDTree configs
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']

" CtrlP configs
nnoremap <silent> <leader>p :CtrlP<CR>
set wildignore=*/.git/*,*/*.pyc

" git-gutter configs
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_modified_removed = '++'
let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_set_sign_backgrounds = 1
highlight clear SignColumn
highlight SignColumn guibg=black
highlight SignColumn ctermbg=0
highlight GitGutterAdd             guifg=#e9e9e9 guibg=#006c02 guisp=NONE ctermfg=2 ctermbg=NONE
highlight GitGutterChange          guifg=#000000 guibg=#cbcd04 guisp=NONE ctermfg=3 ctermbg=NONE
highlight GitGutterDelete          guifg=#e9e9e9 guibg=#9b0e05 guisp=NONE ctermfg=1 ctermbg=NONE
highlight GitGutterChangeDelete    guifg=#000000 guibg=#c16f00 guisp=NONE ctermfg=3 ctermbg=NONE
