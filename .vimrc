"dein script---------------------------------------------------------

if &compatible
	set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')

" dein.vim itself
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

"if no dein.vim get it from github
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" start setting
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " read toml and cache it
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " end setting
  call dein#end()
  call dein#save_state()
endif

" install not installed plugins
if dein#check_install()
  call dein#install()
endif 

"end dein script---------------------------------------------------------

set number
set nowrap

set ruler
set cursorline
"set cursorcolumn
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
"inoremap { {}<Left>
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap ( ()<ESC>i
"inoremap (<Enter> ()<Left><CR><ESC><S-o>

set background=dark
"set guifont=Ricty_Diminished:h11


set incsearch "do incremental searching
set ignorecase "ignorecase when searching
set smartcase "under ignorecase search, when search with large case, do not ignore case

set wildmenu
set wildmode=longest,full
set pumheight=10 "set height of menu

set wrapscan

"set list   "visualize empty space
set nolist
"set listchars=tab:>-,trail:-,eol:],extends:>,precedes:<,nbsp:%
"set listchars=tab:▸.,trail:-.,eol:$,precedes:<,nbsp:%
"set listchars=tab:>▸,trail:▸,eol:↲,extends:>,precedes:<,nbsp:%


set display=lastline "display the line no matter how long it is
"set columns=100
"set lines=32


set backspace=2
set autoindent
set cindent
set expandtab
set tabstop=4 
set shiftwidth=4
set softtabstop=0



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
set undodir = "$HOME/.vim/undo"

set hidden "while editing enable openning another file
set confirm "confiem when tried to close window without saving
set autoread "if file is edited by other program while being open by gvim, rewrite


set scrolloff=8 
set sidescrolloff=16 
set sidescroll=1 



