" set rtp+=/home/mridul/.local/lib/python2.7/site-packages/powerline/bindings/vim

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set number

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Out of bounds characters (limit setup to 80 characters)
highlight ColorColumn ctermbg=white
call matchadd('ColorColumn', '\%81v', 100) "set column nr

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

