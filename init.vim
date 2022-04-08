syntax on

set noshowmatch
set ruler
set autoread
set showcmd
set hidden
set noerrorbells
set novisualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set hlsearch
set scrolloff=8
set textwidth=80
set wrap linebreak
filetype plugin indent on

set cmdheight=2

" Make backspace work as in most other programs
set backspace=indent,eol,start
nnoremap <NL> i<CR><ESC>

" vim-plug configs
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
" Plug 'preservim/nerdtree'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'davidhalter/jedi-vim'
Plug 'chrisbra/csv.vim'
Plug 'stephpy/vim-yaml'
" Plug 'sheerun/vim-polyglot'

call plug#end()

let g:python_highlight_all = 1

" Colorscheme changes
colorscheme gruvbox
set background=dark
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" leader configs
let mapleader = " "
nnoremap <silent> <leader><space> :nohlsearch<CR>
nnoremap <silent> <leader>r :colorscheme gruvbox <bar>:set background=dark<CR>

" Insert pdb when pressed p
nnoremap <silent> <leader>p yyP^Cimport pdb; pdb.set_trace() # BREAKPOINT<ESC>
nnoremap <silent> <leader>t A # TODO,

"let g:lightline#extensions#tmuxline#enabled = 1
"let lightline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

" NERDTree configs
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']

" fzf git-files configs
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader> :Buffers<CR>
let g:fzf_preview_window = ''

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
