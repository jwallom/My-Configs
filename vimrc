set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

"Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required

filetype plugin indent on    " required
syntax on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"colorscheme railscasts

"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8
set laststatus=2

"if has("gui_running")
"   let s:uname = system("uname")
"   if s:uname == "Darwin\n"
"      set guifont=Inconsolata\ for\ Powerline:h15
"   endif
"endif
