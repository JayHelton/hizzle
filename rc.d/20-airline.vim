" ==================================================
" airline settings
" ==================================================

let g:airline_extensions = ['branch', 'tabline', 'ale']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let airline#extensions#ale#show_line_numbers = 1
let g:airline_theme = 'deus'

" remove the encoding section
let g:airline_section_y=''

" Shorter line/col display
let g:airline_section_z = airline#section#create(['%4l/%L:%3v'])

" remove separators for empty sections
let g:airline_skip_empty_sections = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
