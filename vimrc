filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'kien/ctrlp.vim'            " Fuzzy find files
Plugin 'scrooloose/nerdtree'       " File drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive'        " The ultimate git helper
Plugin 'tpope/vim-commentary'      " Comment/Uncomment lines with gcc/gc in visual mode

call vundle#end()

set nu                     " Show line number
set backspace=indent,eol,start
set linespace=0
set showmatch
set incsearch
set hlsearch
set winminheight=0

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set nowrap
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set nojoinspaces
set splitright
set splitbelow

let mapleader=','
let maplocalleader='_'

set encoding=utf8
let base16colorspace=256
set t_Co=256
" colorscheme solarized

syntax on                  " Syntax highlighting
filetype plugin indent on  " Detect file types
set background=dark        " Assume dark background
scriptencoding utf-8       " Set encoding

set nocompatible
set autoread

if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

set ttyfast

set showmode               " Display current mode
set cursorline             " Highlight current line
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw
set magic
set mat=2

if filereadable(expand("~/.vim/colors/solarized.vim"))
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    color solarized
endif

highlight clear SignColumn
highlight clear LineNr

nnoremap <silent> j gj
nnoremap <silent> k gk

let g:NERDTreeQuitOnOpen=0
let NERDTreeShowHidden=1

nmap <silent> <leader>k :NERDTreeToggle<cr>
nmap <silent> <leader>y :NERDTreeFind<cr>

nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$'
    \ }
let g:ctrlp_working_path_mode=2

if has('cmdline_info')
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
    set showcmd
endif

if has('statusline')
    set laststatus=2
    set statusline=%<%f\
    set statusline+=%w%h%m%r
    set statusline+=\ [%{&ff}/%Y]
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%
endif


