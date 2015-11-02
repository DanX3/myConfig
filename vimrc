set autoindent
set noruler
set number
set mouse=a
set tabstop=4
set softtabstop=4

"Convert tabs into spaces. Use if you need it
set expandtab
set shiftwidth=4
retab

"Ctrl Shortcuts
map <C-W> :close<CR>
map <C-F5> :tabe $MYVIMRC<CR>
map <C-F10> I<Esc>4xj
imap <C-F10> <Esc><C-F10>
map <A-F10> I//  <Esc>j
imap <A-F10> <Esc><A-F10>

"Shift Shortcuts
map <S-Left> gT
map <S-Right> gt
imap <S-Left> <Esc><S-Left>i
imap <S-Right> <Esc><S-Right>i

"FN Shortcuts
map <F2> :w<CR>
imap <F2> <Esc><F2>
map <F3> :wq
map <F5> :source $MYVIMRC<CR>
map <F10> I//  <Esc>j

"Common Abbreviation
iab { {<CR>}<Up><End>
""iab [ []<Esc>i

"C Abbreviations
iab _in #include <.h><Esc>hhi
iab _pf printf("\n", );<Esc>6hi
iab _fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
iab _main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
iab _for for (int i=0; i<; i++) {<CR><Tab><CR><BS>}<Esc>kk<End>7hi
iab _while while() {<CR><Tab><CR><BS>}<Esc>kk<End>3ha
