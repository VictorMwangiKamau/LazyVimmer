" Vic Vimmer plugins

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => My plugins are managed by vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" Language server plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'marlonfan/coc-phpls', { 'for': 'php' }
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" Plugins for git
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Plugins for my stack
Plug 'mattn/emmet-vim', { 'for': ['html', 'php', 'svelte', 'vue', 'javacsript', 'typescript' ]}
Plug 'ap/vim-css-color', { 'for': ['css', 'scss' ,'vue', 'html'] }
" Plug 'gko/vim-coloresque'
" Plug 'moll/vim-node'
" Plug 'leafoftree/vim-svelte-plugin'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}
" Plug 'sheerun/vim-polyglot'

" Utility plugins
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'bronson/vim-trailing-whitespace'
Plug 'thaerkh/vim-indentguides', { 'for': ['html', 'pug', 'vue' ]}
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'shougo/vimfiler.vim'
Plug 'shougo/unite.vim' " vimfiler requires this plugin for it to work
Plug 'machakann/vim-highlightedyank'
Plug 'pechorin/any-jump.vim'
Plug 'xuyuanp/scrollbar.nvim'
" Plug 'ryanoasis/vim-devicons'
" Plug 'rstacruz/vim-hyperstyle'
" Plug 'junegunn/goyo.vim', { 'for': ['html', 'txt', 'md' ]}
" Plug 'majutsushi/tagbar'

" Initialize plugin system
call plug#end()
" end of plugin system

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim plug will automatically include missing plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter *
  \| if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim rainbow config settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim rainbow to load when a file opens
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim autopairs config settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable fly mode for vim autopairs
let g:AutoPairsFlyMode = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => configuration for goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => configuration for syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => configuration for trailing whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:extra_whitespace_ignored_filetypes = ['unite', 'mkd']
" to remove trailing whitespace type :FixTrailingSpace

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => configuration for commenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_cpp = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'cpp': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" configuration for vim filer
let g:vimfiler_as_default_explorer = 1
