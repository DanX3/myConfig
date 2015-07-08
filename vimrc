set autoindent
set noruler
set number
set mouse=a
set tabstop=4

"Convert tabs into spaces. Use if you need it
set expandtab
retab

"Ctrl Shortcuts
map <C-W> :close<CR>
map <C-F5> :tabe $MYVIMRC<CR>
map <C-F10> I<Esc>4x

"Shift Shortcuts
map <S-Left> gT
map <S-Right> gt

"FN Shortcuts
map <F2> :w<CR>
map <F3> :wq
map <F5> :source $MYVIMRC<CR>
map <F10> I//  <Esc>j

"C Abbreviations
iab _in #include <.h><Esc>hhi
iab _pf printf("\n", );<Esc>6hi
iab _fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
iab _main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
