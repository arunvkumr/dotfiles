" Mapping Caps to Esc, for faster navigation
autocmd VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
autocmd VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

syntax on
syntax enable

set ruler
set showcmd
set hidden
set noerrorbells
set novisualbell
set tabstop=4 
set softtabstop=4
set textwidth=120
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
filetype plugin indent on

" Make backspace work as in most other programs
set backspace=indent,eol,start

" vim-plug configs
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'davidhalter/jedi-vim'

call plug#end() 

" Airline Configs
let g:airline_theme='base16_gruvbox_dark_hard'

" leader configs
let mapleader = " "
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <c-h> :vertical resize +10<CR>
nnoremap <silent> <c-j> :resize +10<CR>
nnoremap <silent> <c-k> :resize -10<CR>
nnoremap <silent> <c-l> :vertical resize -10<CR>
nnoremap <silent> <leader><space> :nohlsearch<CR>

" Create splits with leader
nnoremap <leader>v :vsplit <CR> :wincmd l<CR>
nnoremap <leader>s :split <CR> :wincmd j<CR>

" List the available buffers and switch if required
" nnoremap <leader>gb :ls<CR>:b
nnoremap <leader>b :Buffers<CR>

" Switch to available tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

" Insert pdb when pressed p
nnoremap <silent> <leader>p yyP^Cimport pdb; pdb.set_trace() # BREAKPOINT<ESC>

" Colorscheme changes
colorscheme gruvbox
set background=dark

" Coloumn color changes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Lightline changes
set laststatus=2
set cmdheight=1
let g:lightline#extensions#tmuxline#enabled = 1
let lightline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

" NERDTree configs
" autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']

" fzf git-files configs
nnoremap <silent> <C-p> :Files<CR>

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
