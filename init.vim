" ==================================================
" Allow pre-definitions via ~/.config/nvim/before.vim
" ==================================================

if filereadable(expand("~/.config/nvim/before.vim"))
    source ~/.config/nvim/before.vim
endif

" ==================================================
" Source the files ~/.config/nvim/rc.d/
" ==================================================
for f in split(glob('~/.config/nvim/rc.d/*.vim'), '\n')
    exe 'source' f
endfor
 
" ==================================================
" Allow overrides via ~/.config/nvim/after.vim
" ==================================================
if filereadable(expand("~/.config/nvim/after.vim"))
    source ~/.config/nvim/after.vim
endif

lua require("jaydhizzle")

function! CloseHiddenBuffers()
    " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    " close any buffers hidden
    " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr("$") + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            exec "bdelete ".num
        endif
    endfor
endfunction

au BufEnter * call CloseHiddenBuffers()
