call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'

call plug#end()

let mapleader=" "

syntax enable
filetype plugin on

set ruler
set breakindent
set relativenumber
set splitbelow splitright

set nobackup
set nowb
set noswapfile

set modelines=0
set nomodeline

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

vnoremap <C-c> "+y
map <C-p> "+P

map <leader>c :w! \| !compiler <c-r>%<CR><CR>
map <leader>f :Goyo \| set linebreak<CR>
map <leader>e :NERDTreeToggle<CR>

" Interpret .md files, etc. as .markdown
let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo | set bg=light
autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

autocmd BufRead,BufNewFile *.tex set filetype=tex
let g:tex_flavor='latex'

:noremap <leader>u :w<Home>silent <End> !urlscan<CR>
:noremap ,, :w<Home>silent <End> !urlscan<CR>

" Open corresponding .pdf/.html or preview
map <leader>p :!opout <c-r>%<CR><CR>

set wildmode=longest,list,full
set wildmenu

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
