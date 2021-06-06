" ==================================================
" Setup grep shortcuts and use ripgrep if available
" ==================================================
nmap <leader>F :grep!<space>
" Whole word match
nmap g* :grep! -w <C-R><C-W><space>
nmap ga :grepadd!<space>
nmap <leader>r :%s/1/2/g

set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m

