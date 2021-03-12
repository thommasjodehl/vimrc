language en " sets the language of the messages / ui (only works for Vim and not gVim. See langmenu setting for gVim)

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

" vim-search_pulse plugin
Plugin 'inside/vim-search-pulse'

" vim-grepper
Plugin 'mhinz/vim-grepper'

" vim-qf
Plugin 'romainl/vim-qf'

" Gutentags
Plugin 'ludovicchabant/vim-gutentags'

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
   " syntax on
   " colo herald
   " colo molokai
   "  colo vim-material

   " Invisible characters and toggle of them
   set listchars=tab:»\ ,eol:¬
   set list!
   set guifont=Source_Code_Pro_Semibold:h9:cANSI:qDRAFT
endif
if !has("gui_running")
   syntax enable
   inoremap <Char-0x07F> <BS>
   nnoremap <Char-0x07F> <BS>

   " Invisible characters and toggle of them
   set listchars=tab:»\ ,eol:¬
   set list!
endif

if &diff
   map ] ]c
   map [ [c
endif

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

" Tab settings
set expandtab
set shiftwidth=3
set softtabstop=3

" Vim enforces different tab settings for ruby files by default. This turns that setting off..
let g:ruby_recommended_style = 0

" Disable auto indent
filetype indent on

" In file search settings, if uppercase letters is used,
" the search is case sensitive.
set smartcase
set ignorecase " this is needed if smartcase is supposed to work

" Airline plugin settings
set laststatus=2

" Leader assignment
let mapleader = "\<Space>"

" Ack.vim settings
nnoremap <Leader>a :Ack! 
let g:ackprg = 'ag --nogroup --nocolor --column --ignore tags --ignore *.xml --ignore *.txt --ignore *.log'
" let g:ackprg = 'ag --vimgrep'

" vim-grepper settings
nnoremap <Leader>g :Grepper -tool ag<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Netrw leader assignment
nnoremap <Leader>l :Ntree<CR>

" Stop that annoying error sound
set noeb vb t_vb=

" Highlight searchresults
set hlsearch

" vim-qf settings
"" Allows search results in the quickfix window to be opened in a new tab by t
let g:qf_mapping_ack_style = 1

" Gutentags settings
set statusline+=%{gutentags#statusline()}
"" Specifies that the root of the project is where a .gutctags file is found.
"" Make sure to put this at the root of every project!
let g:gutentags_project_root = ['.gutctags']
let g:gutentags_add_default_project_roots = 0
