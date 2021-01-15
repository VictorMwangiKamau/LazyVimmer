"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabs and indenting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" number of spaces to use for autoindenting
set shiftwidth=2
set tabstop=2

" ctrl u for emmet
imap <tab>o <C-y>,

iabbr scaffold <template lang="pug"><Cr><Cr></template><Cr><Cr><script lang="ts"><Cr>import { Options, Vue } from 'vue-class-component'<Cr>@Options({<Cr>components: {  },})<Cr>export default class App extends Vue{<Cr>}<Cr></script><Cr><Cr><style scoped lang="scss"><Cr><Cr></style><ESC>gg:FixWhitespace<Cr>A

syntax enable
