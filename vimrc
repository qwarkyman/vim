set nocompatible              " be iMproved
filetype off                  " required!

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'WeiChungWu/vim-SystemVerilog'
Plug 'FelikZ/ctrlp-py-matcher'

Plug 'godlygeek/tabular'

" Initialize plugin system
call plug#end()

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
let g:solarized_degrade = 0
let g:solarized_bold = 1
let g:solarized_underline = 1 
let g:solarized_italic = 1
let g:solarized_contrast = "high"
let g:solarized_visibility= "high"
colorscheme solarized

let g:clang_complete_copen =1
let g:clang_auto_select =1
let g:solarized_diffmode="high" 

let g:ctrlp_root_markers = ['wa_top.anchor']

let g:ctrlp_custom_ignore = {
 \ 'dir':  '\v[\/](import|build|emu|env_squash|import|libs|meta|powerPro|release_gate_tmp|sdpx|sim|tools|_env|release_gate_tmp|sim|syn|variants|dft)$',
  \ }

let g:ctrlp_use_caching = 1
let g:ctrlp_cache_dir = '~/.vim/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0


set t_Co=256

set noswapfile
set autochdir
autocmd BufEnter * silent! lcd %:p:h

autocmd BufNewFile,BufRead *.tpp set filetype=cpp
au BufNewFile,BufRead *.x set filetype=systemverilog

"use mouse in terminal
set ttyfast
set mouse=a
set ttymouse=xterm

" font 
"set gfn=-adobe-courier-bold-r-normal-*-*-140-*-*-m-*-iso10646-1 
"
"vim tips 
"open  buffers in multiple tabs 
":tab :sba
"open new tab from cmd line 
"tabe filename 
"
"navigate between multiple tabs
"gt | {i}gt

"Always show current position
set ruler

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"Show matching brackets when text indicator is over them
set showmatch

" For regular expressions turn magic on
set magic

" Numbering
set number relativenumber


"
" = TABS AND INDENTING =
"
  " Set manual tab-width
  set tabstop=4

  " Set software tab-width (for eg in case of << and >>)
  set shiftwidth=2

  " No. of spaces to insert for a tab when expandtab is enabled
  set softtabstop=2

  " Round to 'shiftwidth' for "<<" and ">>"
  set shiftround

  " Replace tabs with spaces
  set expandtab

  " Auto-indent new lines
  set autoindent

  " Smart indenting
  set smartindent

  " Prevent forcing of C-preprocessor to column 1
  set cinkeys-=0#

au BufNewFile,BufRead *.x set filetype=systemverilog




"===========
" Mappings
"
noremap <Space> :CtrlP<CR>
noremap <leader>sv :<C-U>so $MYVIMRC<CR>

noremap <F1>  <C-W><S-+>
noremap <F2>  <C-W><S-->

"noremap <up>       <nop>
"noremap <down>     <nop>
"noremap <left>     <nop>
"noremap <right>    <nop>
"noremap <home>     <nop>
"noremap <end>      <nop>
"noremap <pageup>   <nop>
"noremap <pagedown> <nop>


" Perforce related
augroup Perforce
  autocmd!
  autocmd FileChangedRO * call perforce#Checkout(expand('<afile>:p'))
augroup END
