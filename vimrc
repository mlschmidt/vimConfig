""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Vim package manager - https://github.com/tpope/vim-pathogen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Security settings for VIM
set modelines=0

" Keep 1000 lines of history in VIM
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Show the cursor position
set ruler

" Set to auto read when a file is changed from the outside
set autoread

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
set mat=2

" don't wrap lines
set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set background color to dark
set background=dark

" More colors
set t_Co=256

" Set utf8 as standard encoding
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Text, tabs, indexing and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Let vim try to auto tab indent
set smarttab

" tabs should only be 4 spaces!
set tabstop=4

" Indenting for reindent operations
set shiftwidth=4

" Convert everything to whitepsace
set expandtab

" 1 tab is equal to 4 whitepsace
set softtabstop=4

" Set line numbers on
set number

" Linebreak on 80 characters
set lbr
set tw=80

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch to current working directory
set autochdir

" Enable backup
set backup

" Define where to backup files
set backupdir=~/.vim/backup
set directory=~/.vim/swp

" Write undo history to files
set undodir=~/.vim/undodir
set undofile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Status line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show mode in status bar
set showmode

" Always show the status line
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Hotkeys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Run things within vim with 'return'
map <RETURN> :make<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * System configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't write backup file if vim is being called by 'crontab -e'
au BufWrite /private/tmp/crontab.* set nowritebackup

" Don't write backup file if vim is being called by 'chpass'
au BufWrite /private/etc/pw.* set nowritebackup

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" * Git commit messages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd Filetype gitcommit setlocal spell textwidth=72
