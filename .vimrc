
set autoindent
set smartindent
set smarttab
set modeline

syntax on

nmap <BS> X

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

augroup LAST
  au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END
