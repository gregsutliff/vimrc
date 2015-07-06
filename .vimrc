set nocompatible
filetype on 
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'

set number
syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized
filetype plugin indent on
