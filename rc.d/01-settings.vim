" ==================================================
" Basic Settings
" ==================================================
set path+=**

set conceallevel=0
let mapleader="\<Space>" " change the leader to be a space vs slash
set ch=2                 " Make command line two lines high
set ls=2                 " allways show status line
set scrolloff=3          " keep 3 lines when scrolling
set cursorline           " have a line indicate the cursor location
set cindent              " cindent
set autoindent           " always set autoindenting on
set showcmd              " display incomplete commands
set ruler                " show the cursor position all the time
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set visualbell
set nobackup             " do not keep a backup file
set number               " show line numbers
set title                " show title in console title bar
set ttyfast              " smoother changes
set modeline             " last lines in document sets vim mode
set shortmess=atIc       " Abbreviate messages
set nostartofline        " don't jump to first character when paging
set backspace=indent,eol,start
set matchpairs+=<:>      " show matching <> (html mainly) as well
set showmatch
set matchtime=3
set sm                   " show matching braces, somewhat annoying...
set mouse=a
set history=1000         " larger history
set noshowmode           " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeout ttimeoutlen=50
set updatetime=300       " Smaller updatetime for CursorHold & CursorHoldI
set signcolumn=yes
set splitright           " Splits to the right
autocmd VimResized * wincmd =   " Automatically equalize splits when Vim is resized

set foldmethod=syntax "syntax highlighting items specify folds  
set foldcolumn=1 "defines 1 col at window left, to indicate folding  
let javaScript_fold=1 "activate folding by JS syntax  
set foldlevelstart=99 "start file with all folds opened

set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set completeopt=menu            " Just show the menu upon completion (faster)
set directory=~/tmp      " Keep swap files out of the working dir, Adjust if needed in another dir

syntax on
set synmaxcol=200        " Syntax highlight only the first 200 chars"
filetype plugin on
filetype indent plugin on

setlocal colorcolumn=80

if has('linebreak')      " Break indent wrapped lines
  set breakindent
  let &showbreak = '↳ '
  set cpo+=n
end

" ==================================================
" Tab expanded to 2 spaces
" ==================================================
set tabstop=2            " numbers of spaces of tab character
set shiftwidth=2         " numbers of spaces to (auto)indent
set expandtab		     " Tab to spaces by default
set softtabstop=2

" ==================================================
" Search settings
" ==================================================
set hlsearch             " highlight searches
set incsearch            " do incremental searching
set ignorecase           " ignore case when searching
set infercase            " smarter completions that will be case aware when ignorecase is on
set smartcase            " if searching and search contains upper case, make case sensitive search


" ==================================================
" No modlines for security
" ==================================================
set modelines=0
set nomodeline
set nowrap
" ==================================================
" Trailing whitespace handling
" ==================================================

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/


" ==================================================
" Python program where client is installed
" ==================================================

let g:python3_host_prog = '/usr/bin/python3'


" ==================================================
" Spelling
" ==================================================
set spell
set number                     " Show current line number
set relativenumber             " Show relative line numbers



