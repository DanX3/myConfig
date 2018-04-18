"Ctrl Shortcuts
"map <C-W> :close<CR>
map <C-F5> :tabe $MYVIMRC<CR>
map <C-F11> I<Del><Esc>$xxxxx<Down>
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

map <C-Up> ddkP
imap <C-Up> <Esc><C-Up>
map <C-Down> ddp
imap <C-Down> <Esc><C-Down>
map <C-\> :NERDTreeToggle<CR>
map ;; A;<Esc>
inoremap <C-J> <Esc>A;<CR>


"Shift Shortcuts
map <S-Left> gT
map tg gT
map <S-Right> gt
noremap <S-T> :tabedit
imap <S-Left> <C-O>gT
imap <S-Right> <C-O>gt

"FN Shortcuts
map <F2> :w<CR>
map <F2><F2> :wall<CR>
imap <F2> <Esc><F2>
imap <F2><F2> <Esc><F2><F2>
map <F3> :wq
map <F5> :source $MYVIMRC<CR>
map <F6> :s//g<Left><Left>
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
map <S-F12> ggVG=gg
