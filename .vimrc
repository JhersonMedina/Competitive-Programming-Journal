call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
call plug#end()
syntax on
set number
set noerrorbells
set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set nowrap
colorscheme gruvbox
set background=dark
nnoremap <F1> :!./%:r.out < in <CR>
nnoremap <F2> :!./%:r.out < in2 <CR>
nnoremap <F3> :!./%:r.out < in3 <CR>
nnoremap <F4> :!./%:r.out < in4 <CR>
nnoremap <F5> :w <bar> !g++ -o  %:r.out % -std=c++17  -Wall -Wextra -Wshadow -DONPC -O2 <Enter>
nnoremap <F6> :%y+<CR>
nnoremap <F8> :terminal<CR>
nnoremap <F9> :!./%:r.out<Enter>
