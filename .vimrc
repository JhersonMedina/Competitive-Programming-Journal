"vundle for plugins*********************************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline-themes'
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
"***************************************************************************************************

"Edditor Settings***********************************************************************************
syntax on
set number
set noerrorbells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set nowrap
set pastetoggle=<F3>
set clipboard=unnamed
colorscheme gruvbox
set background=dark
let g:airline_theme='bubblegum'
"***************************************************************************************************

"Keymaps for compiling C++
nnoremap <F5> :w <bar> !g++ -o  %:r.out % -std=c++14<Enter>
nnoremap <F6> :%y+<Enter>
nnoremap <F9> :!./%:r.out<Enter>
"Keymaps for java
"nnoremap <F5> :w <bar> !javac %:r.java<Enter>
"Keymaps for
"plugins********************************************************************************************
map <F8> :NERDTreeToggle<CR>
"**************************************************************************************************
