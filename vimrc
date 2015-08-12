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

" surround.vim: quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

" dispatch.vim: asynchronous build and test dispatcher
"Plugin 'tpope/vim-dispatch'

" YouCompleteMe: code completion engine
"Plugin 'Valloric/YouCompleteMe'

" neocomplete: code completion engine
Plugin 'Shougo/neocomplete.vim'

" OmniSharp:  C# IDE!!!
"Plugin 'OmniSharp/omnisharp-vim'

" enhanced pythons syntax highlighting
Plugin 'hdima/python-syntax'

" qmake syntax highlighting
Plugin 'artoj/qmake-syntax-vim'

" windows powershell syntax highlighing
Plugin 'PProvost/vim-ps1'

" QML syntax highlighing
Plugin 'crucerucalin/qml.vim'

" TOML syntax
Plugin 'cespare/vim-toml'

" Go integration
Plugin 'fatih/vim-go'

" Vim airline
Plugin 'bling/vim-airline'

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
autocmd! bufwritepost .vim/vimrc source %

"augroup omnisharp_commands
"    autocmd!
"    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
"    autocmd BufEnter, TextChanged, InsertLeave *cs SytnasticCheck
"    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
"augroup END

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

" Rebind <leader>
let mapleader = ","

" Disable arrow keys. HardCore !!!
nmap <up> <Nop>
nmap <left> <Nop>
nmap <right> <Nop>
nmap <down> <Nop>
imap <up> <Nop>
imap <left> <Nop>
imap <right> <Nop>
imap <down> <Nop>
vmap <up> <Nop>
vmap <left> <Nop>
vmap <right> <Nop>
vmap <down> <Nop>

" Map Ctrl+<movement> key to navigate windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Nerdtree toggle
nmap <Leader>n :NERDTreeToggle<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

set tabstop=4       " size of hard tabstop
set shiftwidth=4    " size of indent
set smarttab        " make 'tab' insert indents instead of tabs at the beginning of lines
set expandtab       " always use spaces instead of tab characters


syntax on           " turn syntax highlighting on
set nu              " show line numbers by default
set laststatus=2    " always display the statusline

" toggle invisible characters
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:$

" statusline settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Open new splits panes to right and bottom
set splitbelow
set splitright

" Save backups to a less annoying location rather than the current directory.
" If .vim-backup exists in the current directory, backups are saved there.
" Otherwise, they are saved to ~/.vim/backup or . if all else fails.
" see: http://stackoverflow.com/a/9528322
if isdirectory($HOME . '/.vim/backup') == 0
    :silent !mkdir -p ~/.vim/backup > /dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save swp to a less annoying location rather than the current directory.
" If .vim-swp exists in the current directory, they are saved there.
" Otherwise, they are saved to ~/.vim/swap, ~/tmp or .
" see: http://stackoverflow.com/a/9528322
if isdirectory($HOME . '/.vim/swap') == 0
    :silent !mkdir -p ~/.vim/swap > /dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the state of the previous editing session
set viminfo+=n~/.vim/viminfo 


if exists("+undofile")
    " undofile - allows you to use undos after exiting and restarting
    " Like swap and backup files above, save first to .vim-undo, then
    " ~/.vim/undo
    " :help undo-presistence
    " see: http://stackoverflow.com/a/9528322
    if isdirectory($HOME . '/.vim/undo') == 0
        :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif
    set undodir=./.vim-undo//
    set undodir+=~/.vim/undo//
    set undofile
endif


" in the Gui, hide the toolbar and menubar
if has('gui_running')
    set guioptions -=m     " hide the menubar
    set guioptions -=T     " hide the toolbar
    set guioptions -=L
    set guioptions -=l
    set guioptions -=R
    set guioptions -=r
    set background=dark
    set guifont=Ubuntu\ Mono\ Regular\ 13
    colorscheme base16-monokai
endif

"" neocomplete configuration
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_close_preview = 1

"" syntastic conf
" syntastic should use python 3
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = "✗✗"
let g:syntastic_style_warning_symbol = "⚠⚠"
let g:syntastic_python_pylint_post_args='-d C0103,C0111'

"" vim-go conf
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" OmniSharp configuration
let g:OmniSharp_server_type = 'roslyn'

" Ctrl-P configuration
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
noremap <leader>a :up<cr>:silent !autopep8 --ignore E501 E128 E300 -i %<cr>:e!<cr>:redraw!<cr>
noremap <leader>b :up<cr>:silent !pyfmt -i %<cr>:e!<cr>:redraw!<cr>

let python_highlight_all = 1
