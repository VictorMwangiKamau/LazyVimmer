"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

" Insert common snippets
inoremap <C-c> console.log()<Left>
inoremap <C-l> let _ = _<Left>
inoremap <C-a> window.alert()<Left>
inoremap <C-f> function(){}<Left>
inoremap <C-e> addEventListener('', () => { })<Left><Left><Left>

iabbr arrow, const _ = () => { }<Left>
iabbr import, import _ from _ <Left>
iabbr fun, function _ () {<Cr><Cr>}<Left>
iabbr strict, "use strict";
iabbr for,  for(i; i < 10; i ++) {<Cr><Cr>}<Left>
iabbr while,  while(i < 10) {<Cr><Cr>}<Left>
iabbr do,  do {<Cr><Cr>}<Cr>while(i < 10)
iabbr ael, addEventListener('ev', () => {<Cr><Cr>})
iabbr const, const _ = ;<Left>
iabbr let, let _ = ;<Left>
iabbr var, var _ = ;<Left>
iabbr alert, window.alert();<Left><Left>
iabbr log, console.log();<Left><Left>

" ctrl u for emmet
imap <tab>o <C-y>,

compiler typescript

syntax enable
