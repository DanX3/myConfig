" Abbreviations

" C 
inoremap ;in #include <><ESC>hhi
inoremap ;im #include ""<Esc>hhi
inoremap ;pf printf("\n", );<Esc>6hi
inoremap ;fun void function() {<Esc>o<Esc>o}<Esc>kkwwl
inoremap ;main int main(int argc, char** argv) {<Esc>o<Esc>o<Tab>return 0;<Esc>o}<Esc><<kki<Tab>
imap ;for for (int #=0; #<; #++) {<CR><Esc>ddkf<a
imap ;while while() {<CR><Esc>ddkf(a

" C++ 
imap ;class class # {<CR><BS>private:<CR>protected:<CR>public:<Esc>jA;<Esc>4<Up>f#s
inoremap ;cout std::cout << * << '\n';<Esc>F*s
inoremap ;ind #ifndef #<CR>#define #<CR><CR> #endif
map ;< <Esc><<f(bi#::<Esc>A<BS> {<CR><Esc>ddk^f#s

" Fortran 
inoremap ;none IMPLICIT NONE
noremap ;end yypIEND <Esc>wwDxO<Tab>
let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1
inoremap ;write WRITE(*,*) '#:',#
inoremap ;fdo DO i=1,<C-o>oEND DO<Up><C-o>A
inoremap ;fif IF () THEN<CR>ELSE<CR>END IF<Up><Up><Esc>^f(a

" MPI 
inoremap ;mpi MPI_Init(&argc, &argv);<CR>int rank, size;<CR>MPI_Comm_size(MPI_COMM_WORLD, &size);<CR>MPI_Comm_rank(MPI_COMM_WORLD, &rank);<CR><CR><CR><CR>MPI_Finalize();<Up><Up><Tab>
inoremap ;mcw MPI_COMM_WORLD
inoremap ;msi MPI_STATUS_IGNORE
imap ;ir if (!rank) {<CR>

" Java 
imap ;so System.out.println("");<Left><Left><Left>

" JavaScript 
imap ;cl console.log();<Left><Left>

" Bash
inoremap ;bash <Esc>ggi#!/bin/bash<CR><Esc>''i

" HTML 
imap ;c class=""<Left>
imap ;lipsum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
