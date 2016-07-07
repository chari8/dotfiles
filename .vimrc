set number
set nowrap

set ruler
set cursorline
set cursorcolumn
set virtualedit=all "let cursor move to everywhere

syntax on
set hlsearch
"set fileencoding=utf-8 "when :w, write in utf-8
nnoremap <ESC><ESC> :nohl<CR><C-L> 
"hit <C-L> to exit hlsearch
set showmatch "heighlight bracket
set matchtime=1 "highlight for 0.1 sec
set matchpairs& matchpairs+=<:> "add < > to matchpairs

"bracket completion
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

set background=dark
"colorscheme rdark
colorscheme railscasts
"colorscheme hybrid
set guifont=Ricty_Diminished:h11



set incsearch "do incremental searching
set ignorecase "ignorecase when searching
set smartcase "under ignorecase search, when search with large case, do not ignore case

set wildmenu
set wildmode=longest,full
set pumheight=10 "set height of menu

set wrapscan
set autoindent

set nolist
"set listchars=tab:>.,trail:_,eol:?,extends:>,precedes:<,nbsp:%

set display=lastline "diplay the line no matter how long it is
set columns=100
set lines=32


set softtabstop=2
set expandtab

set clipboard=unnamed

set history=2000
set showcmd

set laststatus=2 "show status always on the bottom of the window
set cmdheight=2 "use 2lines to show message
set showtabline=2 "always show tab

"set mapping, Y for yank to the end of the line
nnoremap Y y$ 

set whichwrap=b,s,h,l,<,>,[,]

"under insert mode, use command to move cursor
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

set noswapfile
set nobackup
set undodir=C:\Program_Files\vim74-kaoriya-win64\undo

set hidden "while editing enable openning another file
set confirm "confiem when tried to close window without saving
set autoread "if file is edited by other program while being open by gvim, rewrite


set scrolloff=8 "上下に8行の視野を確保
set sidescrolloff=16 "左右スクロール時に１６行の視野を確保
set sidescroll=1 "左右のスクロールは一文字ずつ行う

