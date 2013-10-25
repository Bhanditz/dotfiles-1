set nocompatible
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'desert-warm-256'
Bundle 'tomasr/molokai'
Bundle 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
" vim scripts plugins
Bundle 'vim-scripts/BufOnly.vim'
Bundle 'L9'
Bundle 'vim-scripts/FuzzyFinder'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vim-scripts/c.vim'
Bundle 'vim-scripts/scons.vim'
Bundle 'terryma/vim-smooth-scroll'
Bundle 'steffanc/cscopemaps.vim'

set tags=./tags;/

" stop c.vim messing with C-j
let g:C_Ctrl_j = 'off'
" add syntax highlighting to Scons* files
" works in conjunction with vim-scripts/scons.vim
au BufNewFile,BufRead SCons* set filetype=scons 

"let mapleader=","
"nnoremap <leader>w <C-w>v<C-w>l

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
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"set nowrap

set wrap
set linebreak
set nolist
set relativenumber
set encoding=utf-8
set cursorline
set ignorecase
set smartcase
set ruler
set showcmd
set autoread
"keep extra files out of the way. double trailing / enables name collision
"avoidance
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

"more intuitive splitting
set splitbelow
set splitright

set textwidth=80
set colorcolumn=81
set incsearch
set laststatus=2

" use ctags before cscope
set csto=0

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=[%{Tlist_Get_Tagname_By_Line()}]
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%2*0x%04B\ %*          "character under cursor

"default coloumn for csupport.vim end of line comment (\cl) = 0 (doesn't work?)
"let g:C LineEndCommColDefault=0

colorscheme vividchalk

syntax on
filetype plugin indent on



" keymaps last to override any plugin settings
inoremap jj <Esc>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
"open tag list, move to tag window
nmap <F4> :TlistToggle <cr> 5<C-h>
"open source tree explorer
nmap <F5> :NERDTreeToggle <cr>
