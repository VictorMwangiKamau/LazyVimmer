"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

iabbr sout System.out.println("");<Esc><Left><Left>i
iabbr jav public class class_name {<Cr>public static void main(String args []) {<Cr>System.out.println();}}<ESC>gg:FixWhitespace<Cr>

nnoremap <leader>make :!javac %<Cr>

syntax enable
