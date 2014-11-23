set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Other plugins start here:

" solarized colour scheme
Plugin 'altercation/vim-colors-solarized'

" Ctrl-P: buffer/file/mru/tag explorer with fuzzy text matching
Plugin 'kien/ctrlp.vim'

" Markdown syntax highlighting for vim
Plugin 'plasticboy/vim-markdown'

" NERDTree file nav plugin
Plugin 'scrooloose/nerdtree'

" All plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required!

" Non plugin stuff starts here

" size of hard tabstop
set tabstop=4

" size of indent
set shiftwidth=4

" make 'tab' insert indents instead of tabs at the beginning of lines
set smarttab

" always use spaces instead of tab characters
set expandtab

" turn syntax highlighting on
syntax on

" show line numbers by default
set nu

" toggle invisible characters
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:$

" in the Gui, hide the toolbar and menubar
if has('gui_running')
    set guioptions -= m     " hide the menubar
    set guioptions -= T     " hide the toolbar
endif
