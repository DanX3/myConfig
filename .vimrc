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
set timeoutlen=300


"Theming
syntax enable
"let g:solarized_contrast='high'
"set background=dark
"set background=dark
colorscheme github
colorscheme Tomorrow-Night-Eighties
hi TabLineSel ctermfg=Black ctermbg=White
hi TabLine ctermfg=Black ctermbg=Grey
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_powerline_fonts = 0
let g:airline_theme="cool"


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
"let run = "!pebble build"
let run = "!nodejs server.js"
let install = "!pebble install --cloudpebble"
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"let g:Powerline_symbols='unicode'
    
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"let g:solarized_termcolors=256
"let g:solarized_contrast='low'
"set foldcolumn=0

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
map ;; A;<Esc>
inoremap <C-J> <Esc>A;<CR>


"Shift Shortcuts
map <S-Left> gT
map tg gT
map <S-Right> gt
imap <S-Left> <Esc><S-Left>i
imap <S-Right> <Esc><S-Right>i

"FN Shortcuts
inoremap <F1> <Esc>ddko
map <F2> :w<CR>
map <F2><F2> :wall<CR>
imap <F2> <Esc><F2>
imap <F2><F2> <Esc><F2><F2>
map <F3> :wq
map <F4> bdw
imap <F4> <C-W>
map <F5> :source $MYVIMRC<CR>
"map <F6> <Leader>ig
map <F6> :s//g<Left><Left>
"map <F7> :!astyle --style=google '@'
map <F7> :s/#//g<Left><Left>
map <F9>  :wall<CR>:!clear && make<CR>
imap <F9> <Esc><F9>
map <F10> :wall<CR>:!clear && make && make run<CR>
imap <F10> <Esc><F10>
map <F12> @:

"Alt Shortcuts
map <A-F11> I'<End>\n' +<Esc><Down>

"Common Abbreviation
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap {} {}
inoremap {% {%  %}<Left><Left><Left>
inoremap (( ()<Left>
"inoremap (  ()<Left>
"inoremap () ()
"inoremap [  []<Left>
"inoremap [] []
map \\ <Leader>c<Space>
map "" I"<Esc>A"<Esc>o<Tab>
"inoremap " ""<Left>
"inoremap "" ""
"inoremap ' ''<Left>
"inoremap '' ''
"map __ :s/-/_/g<CR>A:<CR><Tab>
map __ :s/-/_/g<CR>A
nnoremap <Space> i_<Esc>r
inoremap ;bash <Esc>ggi#!/bin/bash<CR><Esc>''i

"C Abbreviations
inoremap ;in #include <.h><Esc>hhi
inoremap ;im #include ".h"<Esc>hhi
inoremap ;pf printf("\n", );<Esc>6hi
inoremap ;fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
inoremap ;main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
imap ;for for (int #=0; #<; #++) {<CR><Esc>ddkf<a
imap ;while while() {<CR><Esc>ddkf(a
inoremap ;pragma #pragma omp parallel<CR>{<CR>}<Up><CR><Tab>
inoremap ;mall #* data = (#*) malloc(size * sizeof(#));<Esc>4bcw

"C++ Abbreviations
inoremap ;class class * {<CR>private:<CR>protected:<CR>public:<CR>};<Esc>3<Up>f*cw
inoremap ;cout std::cout << * << '\n';<Esc>F*cw

"Javascript Abbreviations
imap ;nt new THREE.
inoremap ;cl console.log('');<Esc>hhi
imap ;nt new THREE.
inoremap $( $("")<Left><Left>
imap ({ ({<CR>

imap ;swi switch() {<CR>case :<Esc>o<Tab>break;<Up><Up><Left><Left><Left>
imap ;out System.out.println();<Left><Left>

"HTML Abbreviations
noremap ;yp yyp:s/</<\//<CR>ko<Tab>
inoremap ><CR> ><Esc>yyp:s/</<\//<CR>ko<Tab>

"Latex Abbreviations
noremap ;be <ESC>yypI<Esc>/begin<CR>cwend<Esc>O
inoremap $$ <CR>$$   $$<Left><Left><Left><Left>
inoremap _{ _{}<Left>

"Fortran Abbreviations
inoremap ;none IMPLICIT NONE
noremap ;end yypIEND <Esc>f(D<Esc>
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
inoremap ;true .TRUE.
inoremap ;false .FALSE.
inoremap ;write WRITE(*,*) 

"MPI Abbreviations
inoremap ;mpi MPI_Init(&argc, &argv);<CR>int rank, size;<CR>MPI_Comm_size(MPI_COMM_WORLD, &size);<CR>MPI_Comm_rank(MPI_COMM_WORLD, &rank);<CR><CR><CR><CR>MPI_Finalize();<Up><Up><Tab>
inoremap ;mcw MPI_COMM_WORLD
inoremap ;msi MPI_STATUS_IGNORE
imap ;ir if (!rank) {<CR>
