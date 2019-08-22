"REMAP"
"au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

"VIM"
" turn relative line numbers on
:set relativenumber
:set rnu

"AIRLINE"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled=1
" Show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod=':t'

"COMMAND"
:command Bdo :w|%bd|e#

"VIM PLUG"
 " Call the .vimrc.plug file
 if filereadable(expand("~/.vimrc.plug"))
     source ~/.vimrc.plug
 endif
