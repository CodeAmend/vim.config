" COC: Setup

" Extensions
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-pairs',
  \ 'coc-snippets',
  \ 'coc-json'
  \ ]

" Conditional extensions
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
	let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
	let g:coc_global_extensions += ['coc-eslint']
endif

nnoremap <silent> K :call CocAction('doHover')<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-reference)

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> <Leader>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <Leader>d :<C-u>CocList diagnostics<cr>
