set nocompatible
filetype off
filetype plugin indent on

set tabstop=2
set softtabstop=2       
set expandtab
set encoding=utf-8
set scrolloff=3
set autoindent
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
"fast terminal connection"
set ttyfast
set cursorline
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

"set undofile -creates a file when you edit that allows undoing after closing the file <FILENAME>.un~
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set noswapfile

" Disabddle arrow keys :)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"this clears out a search to get rid of highlighting once you have found what you are looking for
nnoremap <leader><space> :noh<cr> 

" remap escape key
imap sdf <Esc>

" make ; map to : so its quicker to save files
nnoremap ; :
inoremap <C-Z> <ESC>

"Colorscheme
"syntax on
syntax enable
set background=dark
colorscheme molokai

"Map window movement
map <C-J> <C-W>j
map <C-H> <C-W>h
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-N> <Esc>:NERDTreeTabsToggle<CR>

"Map tab movement
map <C-U> gT 
map <C-I> gt 

"Look for .vimrc changes and autoload them to open vim instances
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
