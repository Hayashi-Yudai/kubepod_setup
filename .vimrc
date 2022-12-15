filetype plugin indent on

"setting
set fileformats=unix,dos,mac
set fenc=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set encoding=utf8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set backspace=indent,eol,start
set vb t_vb=
set clipboard=unnamedplus
set number

"Visual
set cursorline
set virtualedit=onemore
"set smartindent
set visualbell
set showmatch
set wildmode=list:longest

"Tab
set expandtab
set tabstop=2
set shiftwidth=2

"Search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk

syntax on
colorscheme codedark
set background=dark
set t_Co=256

"キーマップ
nnoremap <C-i> <C-a>

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
