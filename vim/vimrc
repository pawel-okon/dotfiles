set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-bufferline'
Plugin 'corntrace/bufexplorer'


call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Full stack development
au BufNewFile,BufRead *.js, *.html, *.css, *.rb
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" NerdTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeMouseMode=2
let NERDTreeKeepTreeInNewTab=1

" Nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" BufferExplorer
map <C-B> :BufExplorer<CR>

" Highlight whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Auto-complete customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" UTF-8 support
set encoding=utf-8

" Python highlight
let python_highlight_all=1
syntax on

" Color schemas
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Line numbering
set nu

" Folding
" Turn on folding
set foldenable
" Make folding 'indent' sensitive or not
set foldmethod=syntax
" Don't autofold anything (but I can still fold manually)
set foldlevel=100
" don't open folds when you undo stuff
set foldopen-=undo

" Make backspace work normal (indent, eol, start)
set backspace=indent,eol,start
