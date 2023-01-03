" Download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" vim-plug plugins
silent! if plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  Plug 'airblade/vim-gitgutter'
  Plug 'farmergreg/vim-lastplace'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ervandew/supertab'
  Plug 'dikiaap/minimalist'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  call plug#end()
endif

filetype on         " Enable file type detection
filetype plugin on  " Enable loading the plugin files

set hlsearch    " Highlight searches
set ignorecase  " Ignore case of searches
set smartcase   " Case-sensitive when query contains an uppercase letter
set gdefault    " Add the g flag to search/replace by default
set showmatch   " Highlights matching parentheses

set autoindent      " Turns on auto-indenting
set copyindent      " Copy the previous indentation on autoindenting
set smartindent     " Automatically insert extra level of indentation
set expandtab       " Convert tabs to spaces
set tabstop=2       " Make tabs as wide as two spaces
set shiftround      " When shifting, round indentation to nearest multiple of “shiftwidth”
set shiftwidth=2    " When shifting, indent using four spaces

set title               " Set the window’s title, reflecting the file currently being edited
set cursorline          " Highlight the line currently under cursor
set number              " Enable line numbers
set visualbell          " Flash the screen instead of beeping on errors
set background=dark     " Use colors that suit a dark background
colorscheme minimalist  " Change color scheme

set nocompatible                " Make Vim more useful
set modeline                    " Respect modeline in files
set showmode                    " Show the current mode
set nowrap                      " Disable line wrapping

" Automatically set paste mode in Vim when pasting in insert mode
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode

let &t_SI.="\<Esc>[?2004h"
let &t_EI.="\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" auto-pairs
let g:AutoPairsFlyMode=1

" vim-gitgutter
let g:gitgutter_enabled=1
set updatetime=400
highlight GitGutterAdd guifg=#AFD787 ctermfg=2
highlight GitGutterChange guifg=#D7875F ctermfg=3
highlight GitGutterDelete guifg=#AF87D7 ctermfg=1

