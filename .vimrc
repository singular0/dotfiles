" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" vim-plug plugins
silent! if plug#begin()
  Plug 'fxn/vim-monochrome'
  call plug#end()
endif

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
filetype on
filetype plugin on
filetype indent on
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
" Always show status line
set laststatus=2
" Enable line numbers
set number
" Copy indent from last line when starting new line
set autoindent
" Make tabs as wide as two spaces
set tabstop=2
" At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set smarttab
set smartindent
set backspace=indent,eol,start
set visualbell
set scrolloff=3
set title

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

augroup LAST
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

set background=dark
colorscheme monochrome

