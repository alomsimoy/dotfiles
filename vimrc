set nocompatible
syntax on
filetype plugin indent on
set mouse=a
set number
set showbreak=+++
set textwidth=80
set showmatch
set visualbell
set hlsearch
set smartcase
set incsearch
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set smarttab
set ruler
set undolevels=1000
set backspace=indent,eol,start
set exrc
set secure
set backupcopy=yes
set noshowmode

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'mutewinter/vim-import-js' , { 'for': ['javascript', 'javascript.jsx'] }
Plugin 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }

call vundle#end()

" solarized theme
set background=dark
set t_Co=16
try
    colorscheme solarized
catch
endtry

" Highlight column 80
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=0
endif

" Prefer ag > ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" Airline font
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" Exclude files from .gitignore in ctrl-p
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" nmw/vim-jsx
let g:jsx_ext_required = 0

" pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1

" Autoreload .vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Diff with saved version
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

if has("syntax")
  syntax on
  filetype on
  au BufNewFile,BufRead *.js set filetype=javascript.jsx
endif

" Unmap Q (ex-mode)
nnoremap Q <nop>

nnoremap <leader>/ :Ack!<SPACE>

