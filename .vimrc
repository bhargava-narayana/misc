" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden            " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set hlsearch		" highlight search
set number		" show line numbers

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set expandtab		" tabs to spaces
set shiftwidth=4	" shift command indentation
set tabstop=4		" tab key indentation
set softtabstop=4	" number of spaces per tab in edit mode
set smartindent	" smart indent at start of line

set tags=./tags;	" ctags support

" colorize cursors location
"set cursorline
"set cursorcolumn
"set hi Cursorline cterm=NONE ctermbg=white ctermfg=darkred guibg=white guifg=darkred
"set hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

set laststatus=2	" show statusline always
"set statusline+=%F%=%l,%-20c	" format of the statusline

"set ruler		" show line and column number of cursor

filetype on		" filetype detection
"filetype indent on	" config indentation based on filetype

let Tlist_Auto_Open=1
"let Tlist_Close_On_Select=1
let Tlist_Exit_OnlyWindow=1
"Tlist_Auto_HightLight_Tag=0
let TlistHighlightTag=1
nnoremap <silent> <F8> : TlistToggle<CR>
set hlsearch
