My Neovim setup
===============

My Neovim IDE setup for Python, Go, Rust, HTML, CSS, Javascript, Typescript,
gettext and more.

Features
---------

* `init.vim` handling
* Incremental and smart case search.
* Sublime Text style multiple selections
* Trailing whitespace highlighting and cleaning shortcut
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default
* Remap `<Leader>` to `<SPACE>` and `jj` to `<ESC>`
* Highlight current row and color column 80
* 70+ language packs support
* Syntax checking
* Snippets
* Quotes, parens etc pair, surround
* Extended pair matching with %
* ASCII drawing
* Fuzzy file, buffer, mru, tag, etc finder
* VCS plugins (Fugitive, Lawrencium)
* Tab completion
* Commenting


Plugins
------------

### Color schemes & Appearance

* [Solarized](https://github.com/altercation/vim-colors-solarized)
* [base16-vim](https://github.com/chriskempson/base16-vim)
* [vim-molokai](https://github.com/tomasr/molokai)
* [Oceanic-next](https://github.com/mhartington/oceanic-next)
* [Nord VIM](https://github.com/arcticicestudio/nord-vim)
* [Gruvbox](https://github.com/morhetz/gruvbox)
* [Dracula](dracula/vim)
* [One Half](https://github.com/sonph/onehalf)
* [ayu](https://github.com/ayu-theme/ayu-vim)
* [vim-airline](https://github.com/vim-airline/vim-airline) - Light weight status
  line utility with [themes](https://github.com/vim-airline/vim-airline-themes)

### Utilities

* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) - Fuzzy file, buffer, mru,
  tag, etc finder
* [vim-surround](https://github.com/tpope/vim-surround) -
  quoting/parenthesizing made simple
* [vim-repeat](https://github.com/tpope/vim-repeat) - enable repeating
  supported plugin maps with "."
* [NERD tree](https://github.com/scrooloose/nerdtree) - A tree explorer
* [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Insert or delete
  brackets, parens, quotes in pair
* [tabular](https://github.com/godlygeek/tabular) - text filtering and
  alignment
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) - pairs of handy
  bracket mappings
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) -
  True Sublime Text style multiple selections for Vim
* [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) - A Vim plugin
  that simplifies the transition between multiline and single-line code
* [DrawIt](https://github.com/vim-scripts/DrawIt) - ASCII drawing plugin:
  lines, ellipses, arrows, fills, and more!
* [vim-highlightedyank](https://github.com/machakann/vim-highlightedyank) -
  Make the yanked region apparent!
* [indentLine](https://github.com/Yggdroot/indentLine) - A vim plugin to
  display the indention levels with thin vertical lines

### Version Control

* [Fugitive](https://github.com/tpope/vim-fugitive) - a Git wrapper so awesome,
  it should be illegal
* [gv.vim](https://github.com/junegunn/gv.vim) - A git commit browser in Vim
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) - A
  plugin of NERDTree showing git status
* [Lawrencium](https://github.com/ludovicchabant/vim-lawrencium) - Mercurial
  wrapper for Vim, inspired by Tim Pope's Fugitive

### Programming support

* [coc.nvim](https://github.com/neoclide/coc.nvim) - Intellisense engine for
  vim8 & neovim, full language server protocol support as VSCode
* [vim-polyglot](https://github.com/sheerun/vim-polyglot) - A collection of
  language packs for Vim
* [ale](https://github.com/w0rp/ale) - Asynchronous Lint Engine
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) - An extensible &
  universal comment vim-plugin that also handles embedded filetypes
* [Tagbar](http://majutsushi.github.com/tagbar/) - Displays tags in a window,
  ordered by class etc.
* [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim) - 
  [EditorConfig](https://editorconfig.org/) plugin for Vim 
* [Shebang](https://github.com/vim-scripts/Shebang) - Make executable by
  setting the correct shebang and executable bit
* [UltiSnips](https://github.com/sirver/ultisnips) - The ultimate snippet
  solution for Vim.
* [vim-snippets](https://github.com/honza/vim-snippets) - vim-snipmate default
  snippets
* [MatchTagAlways](https://github.com/valloric/MatchTagAlways) - A Vim plugin
  that always highlights the enclosing html/xml tags

### Programming Languages and Markups

* [python-mode](https://github.com/klen/python-mode) - Vim python-mode. PyLint,
  Rope, Pydoc, breakpoints from box
* [vim-go](https://github.com/fatih/vim-go) - Go development plugin for Vim
* [rust.vim](https://github.com/rust-lang/rust.vim) - provides Rust file
  detection, syntax highlighting, formatting, Syntastic integration, and more.
* [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax) - CSS3 syntax
  (and syntax defined in some foreign specifications) support for Vim
* [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim) - Vim syntax
  file for scss (Sassy CSS)
* [vim-less](https://github.com/groenewege/vim-less) - vim syntax for LESS
  (dynamic CSS)
* [vim-css-color](https://github.com/ap/vim-css-color) - Preview colours in
  source code while editing
* [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly
  improved Javascript indentation and syntax support in Vim
* [vim-markdown](https://github.com/plasticboy/vim-markdown/) - Markdown Vim
  Mode (with [preview](https://github.com/iamcco/markdown-preview.nvim)).
* [po.vim](https://github.com/vim-scripts/po.vim--Jelenak) -
  Easier editing of GNU gettext PO files


Prerequisites
-------------

- Neovim and Neovim Python client.
- For faster search, [ripgrep](https://github.com/BurntSushi/ripgrep)
- For tags: [ctags](http://ctags.sourceforge.net)

Usage
------------

The following commands will clone the repo, and install `vim-plug` plugin
manager:

    mkdir -p ~/.config/nvim
    git clone https://github.com/MeirKriheli/dotneovim.git ~/.config/nvim
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


Install plugins from the command line:

    nvim +PlugUpdate +qa


After that, [install the desired COC plugins or extensions](https://github.com/neoclide/coc.nvim).

Overrides
----------------

* `~/.config/nvim/before.vim`, if exists, is sourced before everything allowing
  definitions of variables to act upon.
* `~/.config/nvim/after.vim` if exists, is sourced after all the files in
  `~/.config/nvim/rc.d` allowing override of default settings (e.g: color
  schemes, plugin configuration, etc.).


Go tags
----------

For CtrlPBufTag search in go files, make sure you have an updated version
of ``ctags`` (>=5.8) and put in your ``~/.ctags``::

    --langdef=Go
    --langmap=Go:.go
    --regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
    --regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
    --regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/


Shortcuts and re-Mappings
----------------------------

| Key                    | Command                                                           |
| ---------------------- | ----------------------------------------------------------------- |
| ``jj``                 | ``<Esc>`` in insert and command modes                             |
| ``<SPACE>``            | ``<Leader>``                                                      |
| ``<Leader>v``          | Load `.vimrc`                                                     |
| ``<Leader>V``          | Activate changes to `.vimrc` (Make sure to save it before)        |
| ``<F2>``               | Close current split (window)                                      |
| ``<F3>``               | Toggle NERD tree                                                  |
| ``<F5>``               | Toggle Tagbar                                                     |
| ``<Leader>S``          | Remove trailing whitespace                                        |
| ``<CTRL>hjkl``         | Window movement commands                                          |
| ``<CTRL>arrow``        | Window movement commands                                          |
| ``<Leader>d``          | Delete buffer, keep the split                                     |
| ``-``, ``+``           | Resize horizontal splits                                          |
| ``<ALT><`` ``<ALT>>``  | Resize vertical splits                                            |
| ``<F9>``               |  Toggle logical (RTL, e.g: Hebrew) editing                        |
| ``<F8>``               | Toggle visual (RTL, e.g: Hebrew) editing                          |
| ``g/``                 | :grep!<Space>                                                     |
| ``g*``                 | :grep! -w current_word                                            |
| ``ga``                 | :grepadd! (add results to the current search)                     |
| ``gr``                 | :CtrlPBufTag (fuzzy tag search in current file)                   |
| ``<TAB>``              | trigger completion, completion confirm, snippet expand and jump   |


Virtualenv settings
-------------------

If you're running from virtualenv activated, make sure to point nvim and ale to
correct locations. By default, settings are:

    let g:python3_host_prog = '/usr/bin/python'
    let g:ale_python_flake8_executable = '/usr/bin/flake8'

If needed, override those settings to the locations on your machine.
