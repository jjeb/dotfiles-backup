" More info http://dougblack.io/words/a-good-vimrc.html
"============================== Colors ==============================
colorscheme badwolf  " awesome colorscheme

"============================== Spaces & Tabs =======================

" enable syntax processing
syntax enable
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
