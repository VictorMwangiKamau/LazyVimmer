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
" Plug 'ryanoasis/vim-devicons'
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

" I do not use these plugins so much

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

" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'
" configuration for vim filer
let g:vimfiler_as_default_explorer = 1
