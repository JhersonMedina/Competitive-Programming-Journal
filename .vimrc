call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'tpope/vim-fugitive'
	Plug 'kien/ctrlp.vim'
	Plug 't9md/vim-choosewin'
	Plug 'preservim/nerdtree'
	Plug 'scrooloose/syntastic'
call plug#end()

syntax on
set number
set relativenumber
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

nnoremap <F10> :NERDTreeToggle<CR>

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = "-std=c++17 -Wall -O2 -fsanitize=undefined -fno-sanitize-recover"

nnoremap <F1> :!./%:r.out < in <CR>
nnoremap <F2> :!./%:r.out < in2 <CR>
nnoremap <F3> :!./%:r.out < in3 <CR>
nnoremap <F4> :!./%:r.out < in4 <CR>
nnoremap <F5> :w <bar> !g++ -o  %:r.out % -std=c++17 -Wall -O2 -fsanitize=undefined -fno-sanitize-recover <Enter>
nnoremap <F6> :%y+<CR>
nnoremap <F7> :w <bar> !ulimit -s unlimited g++ -o  %:r.out % -std=c++17 -Wall -O2 <Enter>
nnoremap <F8> :terminal<CR>
nnoremap <F9> :!./%:r.out<Enter>

