set nu
set nocompatible
filetype on
filetype plugin on


set mouse=a
set mousehide
set laststatus=2
set statusline=%<%f\ line:\ %2l[%3p%%]\ \|\ column:\ %2c\ 


set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
set smartindent
let python_highlight_all = 1
syntax on

set wrap
set linebreak

set showcmd
set hlsearch
set incsearch
set nowrapscan
set ignorecase


set nobackup
set noswapfile

set fileencodings=utf-8,cp1251,koi8-r,cp866
scriptencoding utf-8
set encoding=utf-8

set novisualbell
set vb t_vb=

set ruler
set updatetime=0
set shortmess+=I



set completeopt=menu
autocmd FileType python set omnifunc=pythoncomplete#Complete
function InsertTabWrapper()
let col = col('.') - 1
if !col || getline('.')[col - 1] !~ '\k'
return "\"
else
return "\<>"
endif
endfunction
"imap <¶>=InsertTabWrapper()

set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t


"autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,async,with,class


nmap <F3> :nohlsearch<CR>
imap <F3> <Esc>:nohlsearch<CR>
vmap <F3> <Esc>:nohlsearch<CR>gv

nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

