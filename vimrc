set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


syntax on

set shiftwidth=2 tabstop=2 autoindent cindent expandtab

" search
set hlsearch
set incsearch
highlight Search term=bold cterm=NONE ctermfg=White ctermbg=DarkYellow gui=NONE guifg=DarkGrey guibg=NONE

" line number
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
nmap <C-N><C-N> :set invnumber<CR>
set cursorline
highlight CursorLine   cterm=NONE ctermbg=17 ctermfg=NONE guibg=17 guifg=NONE
" highlight Pmenu ctermfg=16 ctermbg=DarkBlue guibg=Red
