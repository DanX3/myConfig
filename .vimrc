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

execute pathogen#infect()
filetype plugin on

"Theming
let g:gruvbox_contrast_dark='soft'
set background=dark
colorscheme gruvbox

"let g:solarized_termcolors=256
"let g:solarized_contrast='low'
"set background=dark
"colorscheme solarized

setlocal foldmethod=indent
set foldcolumn=0

"Ctrl Shortcuts
"map <C-W> :close<CR>
map <C-F5> :tabe $MYVIMRC<CR>
map <C-F11> I<Del><Esc>$xxxxx<Down>
map <C-Up> ddkP
imap <C-Up> <Esc><C-Up>
map <C-Down> ddp
imap <C-Down> <Esc><C-Down>a
noremap <C-T> :tabedit 
inoremap <C-O> <Esc>o
map <C-\> :NERDTreeToggle<CR>

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

"Alt Shortcuts
map <A-F11> I'<End>\n' +<Esc><Down>

"Common Abbreviation
iab { {<CR>}<Up><End>

"C Abbreviations
imap ;in #include <.h><Esc>hhi
imap ;pf printf("\n", );<Esc>6hi
imap ;fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
imap ;main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
imap ;for for (var i=0; i<; i++) {<CR><Tab><CR><BS>}<Esc>kk<End>7hi
imap ;while while() {<CR><Tab><CR><BS>}<Esc>kk<End>3ha
imap ;pragma #pragma omp parallel<CR>{<CR>}<Up><CR><Tab>

"Javascript Abbreviations
imap ;nt new THREE.
imap ;cl console.log('');<Esc>hhi
imap ;nt new THREE.

