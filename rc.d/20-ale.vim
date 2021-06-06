" ===================================================================
" ale (Asynchronous Lint Engine) settings 
" ===================================================================

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" For airline integrstion
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1

" misc
let g:ale_fixers = {'rust': ['rustfmt'] ,'python': ['black'], 'html': ['prettier'], 'typescript': ['prettier', 'eslint'], 'json': ['prettier'], 'javascript': ['prettier', 'eslint']}

nmap <leader>L :ALEFix<CR>

nmap <C-L> :ALEFix<CR>
