set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" CtrlP plugin
Plugin 'ctrlpvim/ctrlp.vim'

" Airline plugin
Plugin 'vim-airline/vim-airline'

" Ack plugin
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Support of special characters
scriptencoding utf-8
set encoding=utf-8

" Font settings
"set guifont=Consolas:h10:b
set guifont=Consolas:h10

" Relative line numbers
set relativenumber
set number

" No line wrapping
set nowrap

" Netrw settings
" Remeber that the key c changes pwd to where the cursor is
set nocp
filetype plugin on
let g:netrw_liststyle=3

" Window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Window size maximized
if has("gui_running")
   set lines=999 columns=999
   " Remove certain gui elements
   set guioptions-=m "Remove menu bar
   set guioptions-=T "Remove toolbar
 
   " Colorscheme settings
   syntax on
   " colo herald
   colo molokai

endif
if !has("gui_running")
   set term=xterm
   set t_Co=256
   let &t_AB="\e[48;5;%dm"
   let &t_AF="\e[38;5;%dm"
   colorscheme herald
endif

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

" Tab settings
:set expandtab
:set shiftwidth=3
:set softtabstop=3

" Disable auto indent
filetype indent off

" In file search settings, if uppercase letters is used,
" the search is case sensitive.
set smartcase
set ignorecase " this is needed if smartcase is supposed to work

" Airline plugin settings
set laststatus=2

" Invisible characters and toggle of them
set listchars=tab:»\ ,eol:¬
set list!

" Leader assignment
let mapleader = "\<Space>"

" Ack.vim settings
nnoremap <Leader>a :Ack! 
let g:ackprg = 'ag --nogroup --nocolor --column --ignore tags'
" let g:ackprg = 'ag --vimgrep'

" Netrw leader assignment
nnoremap <Leader>l :Ntree<CR>

" Change default dir to
:cd c:\users\twj\wd\

" Highlight searchresults
set hlsearch
