"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

" ctrl u for emmet
imap <tab>o <C-y>,

iabbr metav <meta name="viewport" content="width=device-width, initial-scale=1">
iabbr metat <meta name="theme-color" content="">
iabbr metax <meta http-equiv="X-UA-Compatible" content="ie-edge">
iabbr metad <meta name="description" content="">
iabbr metaa <meta name="author" content="Victor Mwangi Kamau">

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

syntax enable
