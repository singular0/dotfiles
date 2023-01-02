" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" vim-plug plugins
silent! if plug#begin()
	Plug 'dikiaap/minimalist'
	Plug 'farmergreg/vim-lastplace'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
  call plug#end()
endif

" Enable file type detection
filetype on
" Enable loading the plugin files
filetype plugin on

" Enable syntax highlighting
syntax on

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Automatically switch search to case-sensitive when search query contains an uppercase letter
set smartcase
" Highlight dynamically as pattern is typed
set incsearch
" Add the g flag to search/replace by default
set gdefault

" Enable indentation rules that are file-type specific
filetype indent on
" Automatically insert extra level of indentation
set smartindent
" Convert tabs to spaces
set expandtab
" Make tabs as wide as two spaces
set tabstop=2
" At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set smarttab
" When shifting lines, round the indentation to the nearest multiple of “shiftwidth”
set shiftround
" When shifting, indent using four spaces
set shiftwidth=2

" Display command line’s tab complete options as a menu
set wildmenu
" Set the window’s title, reflecting the file currently being edited.
set title
" Show the cursor position
set ruler
" Highlight the line currently under cursor
set cursorline
" Enable line numbers
set number
" Flash the screen instead of beeping on errors
set visualbell
" Use colors that suit a dark background
set background=dark
" Change color scheme
colorscheme minimalist
" The number of screen lines to keep above and below the cursor
set scrolloff=3
" Always show status line
set laststatus=2

" Automatically re-read files if unmodified inside Vim
set autoread
" Allow backspacing over indention, line breaks and insertion start
set backspace=indent,eol,start
" Delete comment characters when joining lines
set formatoptions+=j
" Make Vim more useful
set nocompatible
" Respect modeline in files
set modeline
" Show the current mode
set showmode

" Automatically set paste mode in Vim when pasting in insert mode
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

