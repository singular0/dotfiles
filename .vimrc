" Make Vim more useful
set nocompatible
" Enhance command-line completion
set wildmenu
" Add the g flag to search/replace by default
set gdefault
" Respect modeline in files
set modeline
" Enable syntax highlighting
syntax on
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Show the cursor position
set ruler
" Show the current mode
set showmode

set autoindent
set smartindent
set smarttab

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

augroup LAST
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

