set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'desert-warm-256'
Bundle 'tomasr/molokai'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'craigemery/dotFiles/blob/master/vim/plugin/autotag.vim'
" vim scripts plugins
Bundle 'vim-scripts/BufOnly.vim'
Bundle 'L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'terryma/vim-smooth-scroll'
Bundle 'vim-scripts/taglist.vim'

inoremap jj <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" smooth scrolling: 
" params are distance, duration, speed(how many lines to scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 75, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 75, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

set t_Co=256
set autoindent
set backspace=indent,eol,start
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"set nowrap

set wrap
set linebreak
set nolist
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

set textwidth=80
set colorcolumn=81
set incsearch
set laststatus=2

:set statusline=%<%f%=%([%{Tlist_Get_Tagname_By_Line()}]%)

colorscheme vividchalk

syntax on

filetype plugin indent on

