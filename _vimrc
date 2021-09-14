"Plugins*****************************************
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug'morhetz/gruvbox'
	Plug 'kien/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
call plug#end()
"Editor Settings*********************************
syntax on
set number
set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
colorscheme gruvbox
set guifont=Cascadia_mono:h11
"Keybindings*************************************
autocmd filetype cpp nnoremap <F1> :!%:r < in <CR>
autocmd filetype cpp nnoremap <F2> :!%:r < in2 <CR>
autocmd filetype cpp nnoremap <F3> :!%:r < in3 <CR>
autocmd filetype cpp nnoremap <F4> :!%:r < in4 <CR>
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F6> :%y+<CR>
nnoremap <F7> :NERDTreeToggle<CR>
nnoremap <F8> :terminal<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>
