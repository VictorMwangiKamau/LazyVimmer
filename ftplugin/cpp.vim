"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

iabbr cpp #include<iostream><Cr>/* using namespace std; */<Cr>int main () {<Cr>return 0;}<ESC>gg:FixWhitespace<Cr>

nnoremap <leader>make :!g++ %<Cr>

compiler cpp

syntax enable
