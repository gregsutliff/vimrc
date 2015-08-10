" These lines have to be at the top for vundle
set nocompatible
filetype off "Can be enabled after vundle
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'jgdavey/tslime.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'
Plugin 'wikitopian/hardmode'
call vundle#end()
filetype plugin indent on "required for Vundle

" Enable filetype plugins
filetype plugin on
filetype indent on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Set to auto read when a file is changed from the outside
set autoread


" Sets how many lines of history VIM has to remember
set history=700
" Leader Keys
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Relative numbering
set relativenumber

"Disable mode display (for powerline)
set noshowmode

"Always show the statusline
set laststatus=2

"Always display the tabline
set showtabline=2

set number

"j and k jump 7 lines
set so=7

" Turn on Wild menu
set wildmenu

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Enable incremental search (search as you type
set incsearch

" Don't redraw while executing macros
set lazyredraw

"Highlight matching brackets
set showmatch

" Enable syntax highlighting
syntax enable

colorscheme solarized
set background=dark

set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since I version control everything
set nobackup
set nowb
set noswapfile

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"Close vim if nerdtree is the only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>
let g:rspec_runner = "os_x_iterm"
let g:rspec_command = 'call Send_to_Tmux("bundle exec spring rspec {spec}\n")'
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Vim-RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR> 
