set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Other plugins start here:

Plugin 'altercation/vim-colors-solarized'

" All plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required!

" Non plugin stuff starts here

syntax on
set nu

