" keep 1000 items in history
set history=1000

" show cursor position
set ruler

" show incomplete commands
set showcmd

" show a list of selections for autocomplete selection
set wildmenu

" give 5 space above and below curser
" in command mode, press z and enter
set scrolloff=5

" highlight searcch and do incremental search
set hlsearch
set incsearch

" ignore case in search but do not ignore when keyword has capital letters
set ignorecase
set smartcase

" show line number
set number

" auto indent and smart indent
set ai
set si
" remove autoindent when insert #.
" https://unix.stackexchange.com/questions/106526/stop-vim-from-messing-up-my-indentation-on-comments
set cindent cinkeys-=0#

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" set line break at words when wrapping for long lines
set lbr
" keep indentation when wrapping
" set breakindent breakindentopt=sbr,list:-1 linebreak
set formatoptions=ro
set comments=b:-
set breakindent
set autoindent
set breakindentopt=shift:2

" tell the background of the editor so vim can use the right hightlight
set bg=dark

" set color scheme, no set
colorscheme darkblue 

" map F1 key to insert #!/bin/bash and Enter and ESC, press fn F1
map <F1> i#!/bin/bash<CR>

" leader key, default to "\", can be changed to ",", use :map to view current mapping
" let mapleader=","
" now ,w equals to :wq
" map <leader>w :wq<CR>

" vmap for mapping in visual mode
" nmap for mapping in normal mode

" Use deoplete.
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('omni_patterns', {
  \ 'r': '[^. *\t]\.\w*',
  \})

" to disable `_` being automatically replace by `<-`
let R_assign = 0


" https://gist.github.com/mattn/3f43125df1020fada9b6 
function! s:disable_italic()
  let his = ''
  redir => his
  silent hi
  redir END
  let his = substitute(his, '\n\s\+', ' ', 'g')
  for line in split(his, "\n")
    if line !~ ' links to ' && line !~ ' cleared$'
      exe 'hi' substitute(substitute(line, ' xxx ', ' ', ''), 'italic', 'none', 'g')
    endif
  endfor
endfunction
command! DisableItalic call s:disable_italic()
