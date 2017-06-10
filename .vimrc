set autoindent
"set noruler
set number
set mouse=a
set tabstop=4
set softtabstop=4
set tw=80
set colorcolumn=80

"Convert tabs into spaces. Use if you need it
set expandtab
set shiftwidth=4
retab

execute pathogen#infect()
filetype plugin on
set laststatus=2
set timeoutlen=300
set foldmethod=indent
set nofoldenable
set splitright
set splitbelow
set scrolloff=1
set scrolljump=5

"Theming
syntax on
syntax enable
set t_Co=256
colorscheme github
"colorscheme petrel
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_powerline_fonts = 1
let g:airline_theme="cool"

"Dark Theme
"colorscheme Tomorrow-Night-Eighties
hi TabLineSel ctermfg=Black ctermbg=White
hi TabLine ctermfg=Black ctermbg=Grey

let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1


"Ctrl Shortcuts
"map <C-W> :close<CR>
map <C-F5> :tabe $MYVIMRC<CR>
map <C-F11> I<Del><Esc>$xxxxx<Down>
map <C-Up> ddkP
imap <C-Up> <Esc><C-Up>
map <C-Down> ddp
imap <C-Down> <Esc><C-Down>a
map <C-\> :NERDTreeToggle<CR>
map ;; A;<Esc>
inoremap <C-J> <Esc>A;<CR>


"Shift Shortcuts
map <S-Left> gT
map tg gT
map <S-Right> gt
noremap <S-T> :tabedit 
imap <S-Left> <Esc><S-Left>i
imap <S-Right> <Esc><S-Right>i
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"FN Shortcuts
map <F2> :w<CR>
map <F2><F2> :wall<CR>
imap <F2> <Esc><F2>
imap <F2><F2> <Esc><F2><F2>
map <F3> :wq
map <F4> :%s/\s\+$//e<CR>:w<CR>
imap <F4> <C-W>
map <F5> :source $MYVIMRC<CR>
"map <F6> <Leader>ig
map <F6> :s//g<Left><Left>
"map <F7> :!astyle --style=google '@'
map <F7> :s/#//g<Left><Left>
map <F7><F7> :s/#/i/g<CR>
map <F8> :TagbarToggle<CR>
map <F9>  :wall<CR>:!clear && make<CR>
imap <F9> <Esc><F9>
map <F10> :wall<CR>:!clear && make && make run<CR>
imap <F10> <Esc><F10>
map <F10><F10> :wall<CR>:!clear && make && make debug<CR>
imap <F10><F10> <Esc><F10><F10>
map <F12> @:

"Alt Shortcuts
map <A-F11> I'<End>\n' +<Esc><Down>

"Common Abbreviation
inoremap {<CR> {<CR>}<Esc>O<Tab>
inoremap {} {}<Left>
inoremap {% {%  %}<Left><Left><Left>
"inoremap (( ()<Left>
"inoremap (  ()<Left>
inoremap ( ()<Left>
"inormap [  []<Left>
"inoremap [] []<Left>
map \\ <Leader>c<Space>
map "" I"<Esc>A"<Esc>o<Tab>
"inoremap " ""<Left>
inoremap "" ""<Left>
"inoremap ' ''<Left>
"inoremap '' ''
"map __ :s/-/_/g<CR>A:<CR><Tab>
inoremap AA <C-o>A
nnoremap <Space> i_<Esc>r
inoremap ;bash <Esc>ggi#!/bin/bash<CR><Esc>''i

"C Abbreviations
inoremap ;in #include <.h><ESC>hhi
inoremap ;im #include ".h"<Esc>hhi
inoremap ;pf printf("\n", );<Esc>6hi
inoremap ;fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
inoremap ;main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
imap ;for for (int #=0; #<; #++) {<CR><Esc>ddkf<a
imap ;while while() {<CR><Esc>ddkf(a
inoremap ;pragma #pragma omp parallel<CR>{<CR>}<Up><CR><Tab>
inoremap ;mall #* data = (#*) malloc(size * sizeof(#));<Esc>4bcw
inoremap ;if #if 1<CR>#endif<Up>
"C++ Abbreviations
imap ;class class # {<CR><BS>private:<CR>protected:<CR>public:<Esc>jA;<Esc>4<Up>f#s
inoremap ;cout std::cout << * << '\n';<Esc>F*cw
inoremap ;ind #ifndef #<CR>#define #<CR><CR> #endif
inoremap ;:: std::
map ;< <Esc><<f(bi#::<Esc>A<BS> {<CR><Esc>ddk^f#s

"Fortran Abbreviations
inoremap ;none IMPLICIT NONE
noremap ;end yypIEND <Esc>wwDxO<Tab>
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
inoremap ;true .TRUE.
inoremap ;false .FALSE.
inoremap ;write WRITE(*,*) '#:',#
inoremap ;fdo DO i=1,<C-o>oEND DO<Up><C-o>A
inoremap ;fif IF () THEN<CR>ELSE<CR>END IF<Up><Up><Esc>^f(a

"MPI Abbreviations
inoremap ;mpi MPI_Init(&argc, &argv);<CR>int rank, size;<CR>MPI_Comm_size(MPI_COMM_WORLD, &size);<CR>MPI_Comm_rank(MPI_COMM_WORLD, &rank);<CR><CR><CR><CR>MPI_Finalize();<Up><Up><Tab>
inoremap ;mcw MPI_COMM_WORLD
inoremap ;msi MPI_STATUS_IGNORE
imap ;ir if (!rank) {<CR>
