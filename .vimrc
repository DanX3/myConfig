set autoindent
"set noruler
set number
set mouse=a
set tabstop=4
set softtabstop=4

"Convert tabs into spaces. Use if you need it
set expandtab
set shiftwidth=4
retab

execute pathogen#infect()
syntax on
filetype plugin on
set laststatus=2
set ttimeoutlen=50

"Theming
syntax enable
"let g:solarized_contrast='high'
"set background=dark
set background=dark
colorscheme monokai
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_powerline_fonts = 1

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"
" " airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let run = "!pebble build"
let install = "!pebble install --cloudpebble"
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"let g:Powerline_symbols='unicode'
    

"let g:solarized_termcolors=256
"let g:solarized_contrast='low'

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
map <C-\> :NERDTreeToggle<CR>
map ; A;<Esc>

"Shift Shortcuts
map <S-Left> gT
map tg gT
map <S-Right> gt
imap <S-Left> <Esc><S-Left>i
imap <S-Right> <Esc><S-Right>i

"FN Shortcuts
inoremap <F1> <Esc>ddko
map <F2> :w<CR>
imap <F2> <Esc><F2>
map <F3> :wq
map <F4> bdw
imap <F4> <C-W>
map <F5> :source $MYVIMRC<CR>
map <F7> mzgg=G`z
map <F9> :execute install<CR>
map <F10> :execute run<CR>

"Alt Shortcuts
map <A-F11> I'<End>\n' +<Esc><Down>

"Common Abbreviation
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap {} {}
inoremap {% {%  %}<Left><Left><Left>
inoremap (  ()<Left>
inoremap () ()
inoremap [  []<Left>
inoremap [] []
map \\ <Leader>c<Space>
map "" I"<Esc>A"<Esc>o<Tab>
inoremap " ""<Left>
inoremap "" ""
inoremap ' ''<Left>
inoremap '' ''
"map __ :s/-/_/g<CR>A:<CR><Tab>
map __ :s/-/_/g<CR>A

"C Abbreviations
inoremap ;in #include <.h><Esc>hhi
inoremap ;pf printf("\n", );<Esc>6hi
inoremap ;fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
inoremap ;main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
inoremap ;for for (var i=0; i<; i++) {<CR><Tab><CR><BS>}<Esc>kk<End>7hi
inoremap ;while while() {<CR><Tab><CR><BS>}<Esc>kk<End>3ha
inoremap ;pragma #pragma omp parallel<CR>{<CR>}<Up><CR><Tab>

"Javascript Abbreviations
imap ;nt new THREE.
imap ;cl console.log('');<Esc>hhi
imap ;nt new THREE.

"if strftime("%H") < 6 + 0
    "echo "setting colorscheme to blue"
"elseif strftime("%H") < 12 + 0
    "echo "setting colorscheme to morning"
"elseif strftime("%H") < 18 + 0
    "echo "setting colorscheme to shine"
"else
    "echo "setting colorscheme to evening"
"endif

let g:airline_theme='dark'
