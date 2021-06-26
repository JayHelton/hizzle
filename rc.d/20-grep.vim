" ==================================================
" Setup grep shortcuts and use ripgrep if available
" ==================================================
nmap <leader>F :grep!<space>
" Whole word match
nmap g* :grep! -w <C-R><C-W><space>
nnoremap <expr> <leader>rf ":%s/" .input("find: ") . "/".input("replace with: ") ."/g<CR>"
nnoremap <expr> <leader>rl ":s/" .input("find: ") . "/".input("replace with: ") ."/g<CR>"
nnoremap <expr> <leader>ro ":s/" .input("find: ") . "/".input("replace with: ") ."<CR>"

set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m

