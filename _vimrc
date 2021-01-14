"Pugins******************************************
call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
"Editor Settings*********************************
syntax on
set number
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set pastetoggle=<F3>
set guifont=Fira_Code_Medium:h11
colorscheme gruvbox
set background=dark
let g:airline_theme='bubblegum'
"Keybindings*************************************
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F6> :%y+<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>
map <F8> :NERDTreeToggle<CR>
