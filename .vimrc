" Syntax highlighting
syntax on

" Set numbers on LHS
set number
set nocompatible              " be iMproved, required
"filetype off                  " required
filetype plugin indent on    " required

" .swp files go to this dir
set directory^=$HOME/.vim/tmp//
" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable use of the mouse for all modes
set mouse=a


" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set ruler

" Plugins for vim-plug
call plug#begin('~/.vim/plugged')
Plug 'raimon49/requirements.txt.vim'
Plug 'preservim/nerdtree'
Plug 'ervandew/supertab'
"Plug 'valloric/youcompleteme'
call plug#end()

" Slate colourscheme
colorscheme slate

" Jenkinsfile syntax highlighting
au BufNewFile,BufRead Jenkinsfile setf groovy

" Spelling correction for markdown
au BufNewFile,BufRead *.md set spell
set spelllang=en

" Commands to run if GUI 
if has("gui_running")
  syntax on
  set hlsearch
  colorscheme slate
  set bs=2
  set ai
  set ruler
endif

" Open NERD-tree with crtl-n
map <C-n> :NERDTreeToggle<CR>

" p to paste, gv to reselect and y to yank again
xnoremap p pgvy

" v to highlight current word
map v viw

