" ===================================================================
" ale (Asynchronous Lint Engine) settings 
" ===================================================================

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" For airline integrstion
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'

" misc
let g:ale_fixers = {'c': ['clangtidy'],'rust': ['rustfmt'] ,'python': ['autopep8'], 'html': ['prettier'], 'typescript': ['prettier', 'eslint'], 'json': ['prettier'], 'javascript': ['prettier', 'eslint']}

nmap <leader>L :ALEFix<CR>

nmap <C-L> :ALEFix<CR>
