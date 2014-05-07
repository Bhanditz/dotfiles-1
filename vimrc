set nocompatible

" set the runtime path to include Vundle and initialise
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" use Vundle to handle plugins - install from https://github.com/gmarik/vundle
" run :PluginInstall after installing Vundle to install other plugins

Plugin 'gmarik/vundle'
Plugin 'desert-warm-256'
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
" Plugin 'craigemery/dotFiles/blob/master/vim/plugin/autotag.vim'
" vim scripts plugins
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'L9'
"Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/c.vim'
Plugin 'vim-scripts/scons.vim'
Plugin 'vim-scripts/a.vim'
"Plugin 'vim-scripts/ifdef-highlighting'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'steffanc/cscopemaps.vim'
Plugin 'ervandew/supertab'
"Plugin 'kien/ctrlp.vim'
Plugin 'wincent/Command-T'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'godlygeek/tabular'

filetype plugin indent on

" a.vim doesn't open file which doesn't exist
let g:alternateNoDefaultAlternate = 1
" a.vim search path - extend to include '..'
let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,sfr:..,code/'

" EasyMotion key mappings
map f <Plug>(easymotion-bd-fl)
map t <Plug>(easymotion-bd-tl)
map s <Plug>(easymotion-s2)
" use these keys as labels
let g:EasyMotion_keys = 'asdfjkl;ghqweruioptyzxcvbnm'
" remove greying out when displaying jump letters
"let g:EasyMotion_do_shade = 0
" manually set up key mapping
let g:EasyMotion_do_mapping = 0
" jump to 'a'
let g:EasyMotion_enter_jump_first = 1

set tags=./tags;/

" allow project .vimrc files
set exrc
set secure

" stop c.vim messing with C-j
let g:C_Ctrl_j = 'off'
" add syntax highlighting to Scons* files
" works in conjunction with vim-scripts/scons.vim
au BufNewFile,BufRead SCons* set filetype=scons 

let mapleader = ","
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
set nosmartindent
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
"set nowrap

set wrap
set linebreak
set nolist
"set relativenumber
set encoding=utf-8
set cursorline
set ignorecase
set smartcase
set ruler
set showcmd
set autoread
" required for numbers.vim
set number

"keep extra files out of the way. double trailing / enables name collision
"avoidance
if !isdirectory($HOME . '/.vim/backup')
    call mkdir($HOME . '/.vim/backup', "p")
endif
set backupdir=~/.vim/backup//

if !isdirectory($HOME . '/.vim/swap')
    call mkdir($HOME . '/.vim/swap', "p")
endif
set directory=~/.vim/swap//

if !isdirectory($HOME . '/.vim/undo')
    call mkdir($HOME . '/.vim/undo', "p")
endif
set undodir=~/.vim/undo//
set undofile

"more intuitive splitting
set splitbelow
set splitright

set textwidth=80
set colorcolumn=81

"highlight trailing whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
"strip trailing whitespace from files of FileType on save TODO doesn't work?
autocmd FileType c,cpp,java autocmd BufWritePre <buffer> :%s/\s\+$//e

set incsearch
set laststatus=2

" use ctags before cscope
set csto=1

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
set background=dark

syntax on

" Python
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,longest,preview

" keymaps last to override any plugin settings
inoremap jj <Esc>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <Space> <PageDown>
" open tag list, move to tag window
"open tag list, move to tag window
nmap <F4> :TlistToggle <cr> 5<C-h>
" open source tree explorer
nmap <F5> :NERDTreeToggle <cr>
 
" open tag in new vertical split
map <leader>] :split <CR>:exec("tag ".expand("<cword>"))<CR>

" jump to first found result
set nocst

" useful defaults to remember
" gt -> tabnext
" gT -> tabprevious
" {n}gt go to tab in position n
