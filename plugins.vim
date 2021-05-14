call plug#begin()

" Syntax Highlighting: JavaScript and TypeScript
Plug 'Pangloss/vim-javascript'
Plug 'LeafGarland/typescript-vim'

" Syntax Parsing: JSX and TypeScript 
Plug 'Peitalin/vim-jsx-typescript'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty' " maybe performance issues
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'stephpy/vim-yaml'

Plug 'bfrg/vim-cpp-modern'

Plug 'rhysd/vim-clang-format'

" Theme
Plug 'ChrisKempson/base16-vim'

" COC
Plug 'neoclide/coc.nvim', {
      \ 'branch': 'release',
      \ 'for': [
      \ 'cmake', 'json', 'ts',
      \ 'sh', 'yaml', 'c', 'cpp',
      \ 'javascript', 'vim', 'python']}

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

" C-lang
let g:clang_format#style_options = {
      \ "AccessModifierOffset" : -4,
      \ "AllowShortIfStatementsOnASingleLine" : "true",
      \ "AlwaysBreakTemplateDeclarations" : "true",
      \ "Standard" : "C++11",
      \ "BreakBeforeBraces" : "Stroustrup"}

" base-16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" COC
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



