"REMAP"
"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
:nnoremap <Leader>" ciw""<Esc>P
:nnoremap <Leader>' ciw''<Esc>P
filetype plugin indent on

" Compile and run
autocmd filetype cpp nnoremap <C-r> :w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe<CR>
autocmd filetype c nnoremap <C-r> :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
autocmd filetype java nnoremap <C-r> :w <bar> !javac % && java -enableassertions %:p <CR>
autocmd filetype python nnoremap <C-r> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <C-r> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <C-r> :w <bar> !go build % && ./%:p <CR>

" FZF key bindings
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

" VIM setting
" turn relative line numbers on
" line number is relative
:set relativenumber
:set rnu
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

"COMMAND"
:command Bdo :w|%bd|e#

"COMMENT"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

"VIM PLUG"
 " Call the .vimrc.plug file
 if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif
