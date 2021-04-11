call plug#begin()

" Syntax Highlighting: JavaScript and TypeScript
Plug 'Pangloss/vim-javascript'
Plug 'LeafGarland/typescript-vim'

" Syntax Parsing: JSX and TypeScript 
Plug 'Peitalin/vim-jsx-typescript'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty' " maybe performance issues

" Special syntax
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Theme
Plug 'ChrisKempson/base16-vim'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TPope
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-sleuth'

" Useful tools
Plug 'mileszs/ack.vim'
Plug 'wincent/command-t', {
  \ 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
  \ }

call plug#end()


" command-t
noremap <silent> <leader>t :CommandT<cr>
let g:CommandTWildIgnore="*/bower_components,*/node_modules"


" base-16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
