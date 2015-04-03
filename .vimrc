set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" my adding plugins haha
"nerdtree
Plugin 'https://github.com/scrooloose/nerdtree.git'
"taglist
Plugin 'taglist-plus'
"autocomplpop
Plugin 'AutoComplPop'
"snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
"srcexpl
Plugin 'Source-Explorer-srcexpl.vim'
"vim-powerline
Plugin 'https://github.com/Lokaltog/vim-powerline.git'


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

set shiftwidth=4
set ts=4
set ruler
set foldmethod=marker

set tabstop=4
set mouse=a
set incsearch
"set expandtab
set smarttab
set softtabstop=4

set laststatus=2
set cindent
set autoindent
set hi=1000
set title
set titleold=vim-taeguk

set hls
set scs

colorscheme diablo3
set t_Co=256

"syntax on

set nobackup
set tags=tags
set ignorecase
set smartcase

set showmatch
"set ai
set nu

"for vim-powerline
language en_US.UTF-8
let g:Powerline_symbols = 'fancy'
set laststatus=2

map <C-n> :NERDTreeToggle<CR>
nmap <F8> :Tlist<CR>
