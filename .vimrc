"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
set laststatus=2        " always show statusline (even with only single window)
"set statusline+=%F
""set ruler               " show line and column number of the cursor on right side of statusline
set visualbell          " blink cursor on error, instead of beeping
set t_Co=256
set backspace=2         "use backspace to delete character


"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk


"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
" colorscheme molokai     " good colorschemes: murphy, slate, molokai, badwolf, solarized

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on
" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>


"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')


"""" Cursor motion settings

set scrolloff=3
set textwidth=120


"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase


"""" Miscellaneous settings that might be worth enabling

set cursorline         " highlight current line
set cursorcolumn       " highlight current column

set background=dark    " configure Vim to use brighter colors
set autoread           " autoreload the file in Vim if it has been changed outside of Vim
set autochdir          " auto change current work dir base on edit file
 

"""" Auto remove trailing spaces
autocmd BufWritePre *.c,*cpp,*.h,*.s :%s/\s\+$//e
"autocmd BufWrite * if ! &bin | silent ! %s/\s\+$//ge | endif    
