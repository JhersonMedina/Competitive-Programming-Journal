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
set guifont=Cascadia_mono:h11
"Keybindings*************************************
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F6> :%y+<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>
map <F8> :NERDTreeToggle<CR>
