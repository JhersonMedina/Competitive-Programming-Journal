"Remember to install vim plug
call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'morhetz/gruvbox'
	Plug 'kien/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
call plug#end()
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
set clipboard=unnamedplus
"set nopaste
"Remember to install vim-gnome or vim-gtk package
"WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
		augroup END
endif
colorscheme gruvbox
set background=dark
nnoremap <F1> :!./%:r.out < in <CR>
nnoremap <F2> :!./%:r.out < in2 <CR>
nnoremap <F3> :!./%:r.out < in3 <CR>
nnoremap <F4> :!./%:r.out < in4 <CR>
nnoremap <F5> :w <bar> !g++ -o  %:r.out % -std=c++17<Enter>
nnoremap <F6> :%y+<CR>
map <F7> :NERDTreeToggle<CR>
nnoremap <F8> :terminal<CR>
nnoremap <F9> :!./%:r.out<Enter>
