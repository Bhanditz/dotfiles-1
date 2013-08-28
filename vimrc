set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'desert-warm-256'
Bundle 'tomasr/molokai'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'

inoremap jj <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set t_Co=256
set autoindent
set backspace=indent,eol,start
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set nocompatible
set relativenumber
set undofile
set encoding=utf-8
set cursorline
set ignorecase
set smartcase
set ruler
set showcmd
set autoread

set textwidth=79
set colorcolumn=80
set incsearch
set laststatus=2

colorscheme vividchalk

syntax on

filetype plugin indent on

