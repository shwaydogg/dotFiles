"START GREG's Selections
set paste
"END GREG's Selections
	

"---Start sweet Menu from 
"--- http://www.techerator.com/2010/11/the-ultimate-vimrc-configuration-file-for-the-vim-text-editor/
set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.
syntax on  "Enables syntax highlighting for programming languages
"set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=4  "Assists code formatting
"colorscheme darkblue  "Changes the color scheme. Change this to your liking. Lookin /usr/share/vim/vim61/colors/ for options.
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
set foldmethod=manual  "Lets you hide sections of code
"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk
"--- Ends navigation commands
"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu

"START STEVEN LI's vimrc
set nocompatible

"call pathogen#infect()
execute pathogen#infect()
syntax on
filetype plugin indent on

"Turn on smart indent
""set smartindent
set tabstop=2
set shiftwidth=4
set softtabstop=4
set expandtab
set showmatch
set autoindent

set hls " Highlight search options
set incsearch " Incremental search
set smartcase " Allow case-sensitive search if there is one uppercase

set scrolloff=5

syntax enable

"" Solarized stuff
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Show tab characters, trailing whitespace
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

set ic " Default to case-insensitive search
set cursorline " Highlight current line
hi CursorLine ctermbg=NONE cterm=underline " No color, just underline
set wildmode=longest,list " On tab filename complete, first tab produces longest. Second tab produces list.

set backspace=indent,eol,start " Allow backspacing over indent, eol, start
set laststatus=2 " Set status line as second-to-last line
set statusline=%F%m%r%w\ %=\ [%l,%c]\ \ \ %p%%

" Remap jk while in insert mode to ESC
inoremap jk <ESC>
" Remap kj while in insert mode to ESC
inoremap kj <ESC>

" Improved up/down scrolling on wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap <up> gk
nnoremap <down> gj
imap <up> <c-o>gk
imap <down> <c-o>gj

"END STEVEN LI's vimrc

" Auto Reload .vimrc http://stackoverflow.com/questions/2400264/is-it-possible-to-apply-vim-configurations-without-restarting/2403926#2403926
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
" Auto Reload .vimrc

