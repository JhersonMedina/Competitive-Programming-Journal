"Edditor Settings
syntax on
set number
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set pastetoggle=<F3>
"Keymaps for compiling and excuting in different languages
"C++
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F6> :%y+<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>
"C
autocmd filetype c nnoremap <F5> :w <bar> !gcc % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype c nnoremap <F9> :!%:r<CR>
"Python
autocmd fileType python map <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
"Keymaps for toogle some plugins
map <F8> :NERDTreeToggle<CR>
"Pluing install
call plug#begin()
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	Plug 'kien/ctrlp.vim'
call plug#end()
"Color Scheme
"Taken from: https://github.com/morhetz/gruvbox/blob/master/colors/gruvbox.vim
"Remeber to set line 33 equal to 0 (if italic exits) if you don't like italic 
colorscheme gruvbox
