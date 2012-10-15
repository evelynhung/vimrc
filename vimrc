"-----------------------------------
" Vundle Settings 
"-----------------------------------

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
Bundle 'vim-scripts/indent-motion'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'majutsushi/tagbar'
" https://github.com/mozilla/doctorjs

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

"-----------------------------------
" Bundle Related Settings 
"-----------------------------------

" vim-nerdtree-tabs
nmap <silent> <F3> :NERDTreeTabsToggle<CR>

" toggle TagBar with F7
"nmap <silent> <F7> :TagbarToggle<CR> 

"-----------------------------------
" Other Settings 
"-----------------------------------

" set leader to ,
let mapleader=","
let g:mapleader=","

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

filetype indent on  " Enable filetype-specific indenting

syntax on           " syntax highlight

" TAB setting
set tabstop=2       " set tabs to 2-character width 
set softtabstop=2 
set expandtab       " replace <TAB> with spaces
set shiftwidth=2
set smarttab        " insert tabs on the start of a line according to context
au FileType Makefile set noexpandtab

" search
set hlsearch        " search highlighting
set incsearch       " incremental search
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,case-sensitive otherwise
highlight Search term=bold cterm=NONE ctermfg=White ctermbg=DarkYellow gui=NONE guifg=DarkGrey guibg=NONE
" ,/ turn off search highlighting
nmap <leader>/ :nohl<CR>

" indent
set autoindent      " auto indentation
set copyindent      " copy the previous indentation on autoindenting
set cindent 

" line number
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
nmap <C-N><C-N> :set invnumber<CR>

" cursor
set cursorline
highlight CursorLine   cterm=NONE ctermbg=17 ctermfg=NONE guibg=17 guifg=NONE

" pop up
highlight Pmenu ctermfg=16 ctermbg=DarkBlue guibg=Red

" move around tabs.
" go to prev tab
map <S-A> gT
" go to next tab
map <S-N> gt

" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
