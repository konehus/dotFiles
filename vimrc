" Enable syntax highlighting
syntax on

" Enable file type detection and plugin loading
filetype plugin indent on

" Set line numbers
set number

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

" Enable auto-indentation
set autoindent

" Use ; in addition to : to type commands.
noremap ; :

"Color theme
colorscheme elflord

" Install vim-plug if it's not already installed.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.github.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins with vim-plug.
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-plug'

call plug#end()

set directory=$HOME/.vim/swap//   " Places swap files in single directory

" Set up persistent undo across all files.
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
    call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undodir

packloadall " Load all plugins.
silent! helptags ALL " Load help files for all plugins.

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

set foldmethod=indent " Hides portios of the file by folding

set wildmenu " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string,
                                " Then open the wildmenu.

let NERDTreeShowBookmarks = 1  " Display bookmarks on startup.

autocmd VimEnter * NERDTree  " Enable NERDTree on Vim startup.

" Autoclose NERDTree if it's the only open window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
  \ b:NERDTree.isTabTree()) | q | endif


set relativenumber  " display line numbers relative to current cursor

set hlsearch  " highlights every search match

set clipboard=unnamed,unnamedplus  " Copy into system (*,+) register.

" Map arrow keys nothing so I can get used to hjkl-style movement.
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>
