call plug#begin()
  " Syntax Highlighting: JavaScript and TypeScript
  Plug 'Pangloss/vim-javascript' " Javascript
  Plug 'LeafGarland/typescript-vim' " TypeScript

  " Syntax Parsing: JSX and TypeScript 
  Plug 'Peitalin/vim-jsx-typescript'
  Plug 'stephpy/vim-yaml'
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
  Plug 'airblade/vim-rooter'
  Plug 'mattn/emmet-vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

call plug#end()

let g:user_emmet_leader_key=','

" base-16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
