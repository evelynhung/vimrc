"-----------------------------------
" Vundle Settings 
"-----------------------------------

set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"       call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
" Plugin 'mileszs/ack.vim'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'majutsushi/tagbar'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'indent-motion'
Plugin 'YankRing.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on     " required!
" To ignore plugin indent changes, instead use:
"       filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"-----------------------------------
" Plugin Related Settings 
"-----------------------------------

" vim-nerdtree-tabs
" nmap <silent> <F3> :NERDTreeTabsToggle<CR>

" toggle TagBar with F7
"nmap <silent> <F7> :TagbarToggle<CR> 

"-----------------------------------
" Other Settings 
"-----------------------------------
if has("gui_running") " GUI color and font settings
  set guifont=Osaka-Mono:h20
  set background=dark
  set t_Co=256 " 256 color mode
  set cursorline " highlight current line
  colors moria
  highlight CursorLine guibg=#003853 ctermbg=24 gui=none cterm=none
endif


" set leader to ,
let mapleader=","
let g:mapleader=","

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

filetype indent on  " Enable filetype-specific indenting

syntax on           " syntax highlight

" TAB setting
set tabstop=8       " set tabs to 8-character width
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

" 80-column indication
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" cursor
set ruler
set cursorline
highlight CursorLine   cterm=NONE ctermbg=17 ctermfg=NONE guibg=17 guifg=NONE

" pop up
highlight Pmenu ctermfg=16 ctermbg=DarkBlue guibg=Red

" set mouse=a

" move around tabs.
" go to prev tab
map <S-A> gT
" go to next tab
"map <S-N> gt

" ,p toggles paste mode
nmap <leader>p :set paste!<BAR>set paste?<CR>

" Enable omni completion. (Ctrl-X Ctrl-O)
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
