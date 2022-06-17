nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" set shell=/usr/local/bin/zsh
set encoding=utf-8
set mouse=

set syntax
set number
set relativenumber
set mouse=a
set nobackup
set smartcase
set ignorecase

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html       setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

" set cmdheight=2
" set updatetime=300

" Panes n tabs
set splitbelow
set splitright

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-H> <C-W><C-H>
noremap <C-L> <C-W><C-L>

nnoremap <leader><space> :e#<cr>
nnoremap <esc> :noh<cr>
nnoremap tt :tab split<cr>


source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim
source ~/.config/nvim/fzf-options.vim

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
