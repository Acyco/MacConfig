" basic
autocmd BufWritePost `  ~/.vimrc` source `~/.vimrc`
set autowrite
set cmdheight=1
set nocompatible
set nu
set relativenumber
set ru
set shortmess=atI " no show
set showcmd
set smarttab
set wrap
set tabstop=4
set showmatch
set mat=3

syntax enable
syntax on "语法高亮
filetype on " 文件类型检测

nmap lh ^
nmap le $

