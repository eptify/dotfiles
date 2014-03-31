"""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""
" Set leader key to ',' NB. Leader time is 1000ms
let mapleader = ","
let g:mapleader = ","

" Turns off all annoying pieces of gui in gVim
set guioptions=

" Vim mode
set nocompatible

" Intelligently handle directory changing
set autochdir

" Disables annoying ~ files.
set nobackup
set noswapfile

" Show information about state of keyboard input
set showcmd

" Show matching delimiters
set showmatch

" Turn off annoying dinging at the terminal
set noerrorbells

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""
" Sensible defaults for non-file-specific editing
set tabstop=4
set shiftwidth=4
set expandtab

" For when the keyboard just won't do.
set mouse=a

" Line numbers and such
set number
set numberwidth=5
set ruler

" Don't linebreak in the middle of words
set wrap lbr

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching
"""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
set hidden
set ignorecase
set smartcase
set incsearch

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""
" Make wrapped line movement behave as expected
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "don't fold by default
set foldlevel=1         "sensible default

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
" Treat markdown files as plain text
au BufRead,BufNewFile *.md set filetype=txt

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimux Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
" Send selected text to tmux
map <Leader>vs "vy :call VimuxRunCommand(@v . "\n", 0)<CR>

" Prompt for command
map <Leader>vp :VimuxPromptCommand<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle 
" required!
Bundle 'gmarik/vundle'

" My Bundles 
" Install colorscheme
Bundle 'vim-scripts/wombat256.vim'

" Turns vim and tmux into SLIME-like system
Bundle 'vimux'

" Allows easy commenting and uncommenting of code
" NB. need to add extra line for scheme support
Bundle 'The-NERD-Commenter'

filetype plugin on      " required!

" A nice dark color scheme
colorscheme wombat256mod
