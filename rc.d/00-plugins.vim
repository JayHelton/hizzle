" ==================================================
" vim-plug  setup
" ==================================================
"
call plug#begin()

" Color schemes and appearance

Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'chriskempson/base16-vim'
Plug 'tomasr/molokai'
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'chuling/equinusocio-material.vim'
Plug 'ayu-theme/ayu-vim'

" Appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" General utilities

Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-unimpaired'
Plug 'terryma/vim-multiple-cursors'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/DrawIt'
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
if has('nvim')
  Plug 'kizza/actionmenu.nvim'
endif

" Version control support
"
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ludovicchabant/vim-lawrencium'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim'


" Programming support

Plug 'sheerun/vim-polyglot' " Over 70 language packs
Plug 'tomtom/tcomment_vim'
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-scripts/Shebang'
Plug 'w0rp/ale'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/MatchTagAlways'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Programming languages

Plug 'klen/python-mode'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'groenewege/vim-less'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/po.vim--Jelenak'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }


call plug#end()
