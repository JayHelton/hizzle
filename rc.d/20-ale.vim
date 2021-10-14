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

set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
let g:ale_fixers = {'rust': ['rustfmt'] ,'python': ['black'], 'html': ['prettier'], 'typescript': ['prettier', 'eslint'], 'json': ['prettier'], 'javascript': ['prettier', 'eslint']}
let g:ale_linters = { 'rust': ['analyzer'] }

nmap <leader><leader>l :ALEFix<CR>
