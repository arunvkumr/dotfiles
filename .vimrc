syntax on
filetype plugin indent on
syntax enable

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set incsearch
set hlsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set laststatus=2
set cmdheight=2

" leader configs
let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader>= :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

" NERDTree configs
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" CtrlP configs
nnoremap <silent> <leader>p :CtrlP<CR>

" vim-plug configs
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim' 
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'wincent/command-t'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/tomorrow-theme'
Plug 'kien/ctrlp.vim'

call plug#end() 

