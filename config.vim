" editor config

" Indent file depending on the type of the file
filetype plugin indent on

" set not compatible to vim
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For vim omnicompletion to work
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command line editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=200
set wildmenu
set wildmode=full

" A buffer becomes hidden when it is abandoned
set hid

set textwidth=60

set numberwidth=5

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Linebreak on 500 characters
set lbr
set tw=400

" Auto indent
set ai

" Smart indent
set si

" C indent
set ci

" Wrap lines
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim folds and comments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
set foldenable
set foldmethod=manual

" number is relative number
set number relativenumber

" selecting a colorscheme 
colorscheme solarized8_dark_low

" the cursor to move fast
set ttyfast
set timeout timeoutlen=200 ttimeoutlen=100

"Save on buffer switch
set autowrite

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

" copy the previous indentation on autoindenting
set copyindent

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" ignore case when searching
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => command line editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show (partial) command in the status line
set showcmd

" always show what mode we're currently editing in
set showmode
set cmdheight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim to return to where it was before leaving the file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => managing windows and vim positioning stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For splits to be below and to the right
set splitbelow
set splitright

" http://damien.lespiau.name/blog/2009/03/18/per-project-vimrc/comment-page-1/
" set exrc " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

" Force some file types to be other file types
au BufRead,BufNewFile *.ejs,*.mustache setfiletype html
au BufRead,BufNewFile *.json setfiletype json
au BufRead,BufNewFile *.json.* setfiletype json

if has('mouse')
  set mouse=a
endif

" Fix Vim's ridiculous line wrapping model
set ww=<,>,[,],h,l

" This is handled by airline
set noshowmode

set emoji
set magic
set icm=nosplit

set showbreak=>\ \ 

set scrolloff=15
set noshowmode

set wildmenu
set wildmode=full

set gdefault

set timeout
set timeoutlen=1000
set ttimeoutlen=100

" undo files
set undofile
set backup
set swapfile

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

set modifiable

set nocursorcolumn
set nocursorline
