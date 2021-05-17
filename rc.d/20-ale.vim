" ===================================================================
" ale (Asynchronous Lint Engine) settings 
" ===================================================================

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" For airline integrstion
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'

" Use system flake8
let g:ale_python_flake8_executable = '/usr/bin/flake8'

" misc
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'], 'json': ['prettier']}

nmap <leader>L :ALEFix<CR>

nmap <C-L> :ALEFix<CR>
