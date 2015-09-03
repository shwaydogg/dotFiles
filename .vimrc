set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'jade.vim'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'groenewege/vim-less'
Bundle 'scrooloose/nerdtree'

"Solarized:
Bundle 'altercation/vim-colors-solarized'

Bundle 'tpope/vim-sensible'
Bundle 'wavded/vim-stylus'
Bundle 'mustache/vim-mustache-handlebars'
"Super power line needs python:
"Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim' 
"Did not work without the '.vim'...?
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"End ctrlp settings
"Bundle 'elzr/vim-json'
map <c-j> \be
map F \be
Plugin 'kchmck/vim-coffee-script'
"Bundle 'jlanzarotta/bufexplorer'
Bundle 'crookedneighbor/bufexplorer'
 
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Solarized Stuff:
let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized

set expandtab
set tabstop=2
set shiftwidth=2    
  
" Auto Reload .vimrc http://stackoverflow.com/questions/2400264/is-it-possible-to-apply-vim-configurations-without-restarting/2403926#2403926
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
" Auto Reload .vimrc

"Remap jk while in insert mode to ESC
inoremap jk <ESC>
" Remap kj while in insert mode to ESC
inoremap kj <ESC>

set ic " Default to case-insensitive search
set hls " Highlight search options
set incsearch " Incremental search
set smartcase " Allow case-sensitive search if there is one uppercase

set cursorline " highlight current line

set scrolloff=5

set number
"set relativenumber " Relative line numbering, remember this is useful for moving quickly: number + movement key.  Can be removed quic by typing :set norelativenumber inorder to copy text
"

"Have ctrlP use git's file listing remove local .gitignores and more git smart filtering:
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
