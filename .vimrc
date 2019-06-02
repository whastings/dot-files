set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number " Show line numbers.
set splitbelow
set splitright
set backspace=indent,eol,start
set incsearch
set colorcolumn=100 " Add a ruler.
set laststatus=2 " Always show status line.
:ino <C-C> <Esc> " Ensure ctrl + c triggers insertleave event.
set cursorline
set listchars=tab:>-,extends:>,precedes:<
set list
set iskeyword+=$ " Keep $ as part of word.
set dir=~/tmp " Use tmp directory for swap files.

syntax on
colorscheme slate
