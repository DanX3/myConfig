set autoindent
set number
set mouse=a
set tabstop=4
set softtabstop=4
set tw=80
set colorcolumn=80
set expandtab
set shiftwidth=4
retab

set laststatus=2
set timeoutlen=300
set foldmethod=indent
set nofoldenable
set splitright
set splitbelow
set scrolloff=1
set scrolljump=5

set rtp+=~/.vim/bundle/Vundle.vim
set filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

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

map \\ <Leader>c<Space>
nnoremap <Space> i_<Esc>r
inoremap ;bash <Esc>ggi#!/bin/bash<CR><Esc>''i
source ~/.vim/mappings.vim
