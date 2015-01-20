set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle, and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" Other plugins start here:

" fugitive - git interface
Plugin 'tpope/vim-fugitive'

" YouCompleteMe: code completion engine
Plugin 'Valloric/YouCompleteMe'

" solarized colour scheme
Plugin 'altercation/vim-colors-solarized'

" Ctrl-P: buffer/file/mru/tag explorer with fuzzy text matching
Plugin 'kien/ctrlp.vim'

" syntastic - Syntax plugin
Plugin 'scrooloose/syntastic'

" Markdown syntax highlighting for vim
Plugin 'plasticboy/vim-markdown'

" NERDTree file nav plugin
Plugin 'scrooloose/nerdtree'

" NERDTree file nav plugin
Plugin 'scrooloose/nerdcommenter'

" Vim colorschemes
Plugin 'flazz/vim-colorschemes'

" Base16 vim themes
Plugin 'chriskempson/base16-vim'

" emmet for vim
Plugin 'mattn/emmet-vim'

" All plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required!

" Autoreload .vimrc on edit
" Non plugin stuff starts here
autocmd! bufwritepost .vimrc source %

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Rebind <leader>
let mapleader = ","

" Map Ctrl+<movement> key to navigate windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

set tabstop=4       " size of hard tabstop
set shiftwidth=4    " size of indent
set smarttab        " make 'tab' insert indents instead of tabs at the beginning of lines
set expandtab       " always use spaces instead of tab characters


syntax on           " turn syntax highlighting on
set nu              " show line numbers by default

" toggle invisible characters
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:$

" Open new splits panes to right and bottom
set splitbelow
set splitright

" in the Gui, hide the toolbar and menubar
if has('gui_running')
    set guioptions -=m     " hide the menubar
    set guioptions -=T     " hide the toolbar
    set guioptions -=L
    set guioptions -=l
    set guioptions -=R
    set guioptions -=r
    set background=dark
    colorscheme base16-monokai
endif

"" syntastic conf
" syntastic should use python 3
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pylint']

"" Vala Support
" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1

" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
"let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120
