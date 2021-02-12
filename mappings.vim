" useful remaps

" setting my leader key to space
let mapleader = ' '

nnoremap <leader>t :VimFiler<Cr>

" enable syntax with leader ss
nnoremap <leader>ss :syntax on<Cr>

" set mouse active
nnoremap <leader>ma :set mouse=a<Cr>

" set mouse inactive
nnoremap <leader>mc :set mouse=c<Cr>

" save a file with leader w
nnoremap <leader>w :w<Cr>

" quit a file with leader q
nnoremap <leader>q :q<Cr>

" add semicolon to the end of a line
nnoremap <leader>; A;<Esc>0

" add comma to the end of a line
nnoremap <leader>, A,<Esc>0

nnoremap <leader>h1 yypVr=o
nnoremap <leader>h2 yypVr-o

" Ctrl+j/k to move lines
nnoremap <leader><Up> ddkP
nnoremap <leader><Down> ddp
vnoremap <leader><Up> <ESC>ddkPv
vnoremap <leader><Down> <ESC>ddpv

" switching between tabs
map <leader>l <esc>:bn<Cr>
map <leader>h <esc>:bp<Cr>

" swithcing between window spilts
nnoremap <C-h> <c-w>h
nnoremap <C-l> <c-w>l

if has('nvim')
  tnoremap <C-h> <c-\><c-n><c-w>h
  tnoremap <C-l> <c-\><c-n><c-w>l
endif

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

nnoremap Y y$
nnoremap <tab> >>
nnoremap <s-tab> >>

" Easy escaping to normal model
imap jj <esc>
imap jk <esc>

" Down is really the next line
nnoremap j gj
nnoremap k gk

nnoremap 0 g0
nnoremap $ g$

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  better scrolling with ctrl j and ctrl k
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-k> <C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y><C-y>
map <C-j> <C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m><C-m>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => disabling arrow keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" visual mode
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" > will indent to the left
" < will indent to the right
vnoremap < <gv
vnoremap > >gv

" make Q useless
nnoremap Q <Nop>
nnoremap q <Nop>

" Allow cursor movements during insert mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Useful shortcuts
iabbr email, vmwangi550@gmail.com
iabbr ael, addEventListener

" fix typos in command line mode
cnoremap weq wq
cnoremap Tabe tabe
cnoremap R r
cnoremap Weq wq
cnoremap Wq wq
cnoremap Q q
cnoremap W w

set completeopt=menuone,longest,preview

" Cut, Paste, Copy
vmap <C-x> d
vmap <C-v> p
vmap <C-c> y

" lazy ':'
nnoremap ; :

" terminal modes settings
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
endif

" creating a new line in normal mode
nnoremap <Cr> o<ESC>
nnoremap O O<ESC>

nnoremap <leader>n <C-w>w

" use z as the . operator
nnoremap z .

" return external commands inside vim
cnoremap ls !ls
cnoremap la !la
cnoremap ll !ll
cnoremap pwd !pwd
