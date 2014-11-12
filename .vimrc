" More info http://dougblack.io/words/a-good-vimrc.html
"============================== Colors ==============================
colorscheme badwolf  " awesome colorscheme

"============================== Spaces & Tabs =======================
" enable syntax processing
syntax enable
" Enable syntax highlighting
syntax on
" number of visual spaces per TAB
set tabstop=2
" number of spaces in tab when editing
set softtabstop=2
" tabs are spaces
set expandtab

"============================== Config UI ============================
" show line numbers
set number
" show command in bottom bar
set showcmd
" highlight current line
set cursorline
" visual autocomplete for command menu
set wildmenu
" redraw only when we need to.
set lazyredraw
" highlight matching [{()}]
set showmatch

"============================== Searching ============================
" search as characters are entered
set incsearch
" highlight matches
set hlsearch

"============================== Editor ============================

"============================== Others ============================
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

