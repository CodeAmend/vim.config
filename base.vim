nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

set syntax
set number
set relativenumber
set mouse=a
set nobackup

" Panes n tabs
set splitbelow
set splitright
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>


nnoremap <esc> :noh<cr>
nnoremap tt :tab split<cr>
nnoremap <leader><space> :e#<cr>

