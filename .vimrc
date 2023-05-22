" Download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" vim-plug plugins
silent! if plug#begin()
  Plug 'tpope/vim-sensible'                       " Config defaults
  Plug 'jeffkreeftmeijer/vim-numbertoggle'        " Auto toggle relative numbering with mode
  Plug 'airblade/vim-gitgutter'                   " Git diff in sign column
  Plug 'farmergreg/vim-lastplace'                 " Remember last cursot position in files
  Plug 'jiangmiao/auto-pairs'                     " Add/remove quates, parens, brackets
  Plug 'sheerun/vim-polyglot'                     " Syntax highlighting and indenting
  Plug 'ervandew/supertab'                        " Code alignment
  Plug 'dikiaap/minimalist'                       " Color scheme
  Plug 'preservim/nerdtree'                       " File tree
  Plug 'Xuyuanp/nerdtree-git-plugin'              " Tree git status
  Plug 'vim-airline/vim-airline'                  " Status line
  Plug 'vim-airline/vim-airline-themes'           " Status line themes
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion and linting
  call plug#end()
endif

filetype on             " Enable file type detection
filetype plugin on      " Enable loading the plugin files

set hlsearch            " Highlight searches
set ignorecase          " Ignore case of searches
set smartcase           " Case-sensitive when query contains an uppercase letter
set gdefault            " Add the g flag to search/replace by default
set showmatch           " Highlights matching parentheses

set autoindent          " Turns on auto-indenting
set copyindent          " Copy the previous indentation on autoindenting
set smartindent         " Automatically insert extra level of indentation
set expandtab           " Convert tabs to spaces
set tabstop=2           " Make tabs as wide as two spaces
set shiftround          " When shifting, round indentation to nearest multiple of “shiftwidth”
set shiftwidth=2        " When shifting, indent using four spaces
set nowrap              " Disable line wrapping

set title               " Set the window’s title, reflecting the file currently being edited
set cursorline          " Highlight the line currently under cursor
set number              " Enable line numbers
set visualbell          " Flash the screen instead of beeping on errors
set showmode            " Show the current mode
set background=dark     " Use colors that suit a dark background
set signcolumn=yes      " Always show indicators column
set updatetime=300      " Update each 300 ms
colorscheme minimalist  " Change color scheme

set nocompatible        " Make Vim more useful
set modeline            " Respect modeline in files
set encoding=utf-8      " Set UTF-8 as default encoding

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

" vim-gitgutter configuration
let g:gitgutter_enabled=1

highlight GitGutterAdd guifg=#AFD787 ctermfg=2
highlight GitGutterChange guifg=#D7875F ctermfg=3
highlight GitGutterDelete guifg=#AF87D7 ctermfg=1

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR>
  \ coc#pum#visible()
  \ ? coc#pum#confirm()
  \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" nerdtree configuration
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=["\.git$"]
let NERDTreeHighlightCursorline=1
let g:NERDTreeGitStatusConcealBrackets=1

" Disable signcolumn for NERDTree window
autocmd FileType nerdtree setlocal signcolumn=no

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Close NERDTree if it the only remaining window
autocmd BufEnter *
  \ if (winnr("$") == 1 && exists("b:NERDTree"))
  \ | quit
  \ | endif

" Refresh NERDTree on focus change
autocmd BufEnter NERD_tree_*
  \ | execute 'normal R'

