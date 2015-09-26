"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------
runtime! archlinux.vim

syntax enable
syntax on
filetype plugin indent on
set nocompatible
let mapleader = ","
let g:mapleader = ","
set history=1000
set nobackup
set nowritebackup
set noswapfile
set autoread
set autochdir

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

set title
set scrolloff=1
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
"set cursorcolumn
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
"set relativenumber
"set undofile

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------

set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

set nowrap "" no wrap
set textwidth=99
set formatoptions=n
set colorcolumn=100

" Searching / moving
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" search (forwards)
nmap <space> /
" search (backwards)
map <C-space> ?

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
" close buffer
nmap <leader>d :bd<CR>
" close all buffers
nmap <leader>D :bufdo bd<CR>

" Go to home and end using capitalized directions
noremap H 0
noremap L $

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

noremap Y y$

set vb t_vb=                 " 关闭提示音
set noerrorbells
set novisualbell

set laststatus=2
set cmdheight=2
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

set t_Co=256

set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans = 1
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"" colorscheme solarized

"" colorscheme molokai


"" color set
hi CursorLine cterm=underline
"hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=#2e373b gui=NONE
"hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#2e373b gui=NONE

"  ---------------------------------------------------------------------------
"  Bundle
"  ---------------------------------------------------------------------------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'

Bundle 'FuzzyFinder'
nnoremap ff :FufFile<CR>
nnoremap fb :FufBuffer<CR>

Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 't'

Bundle 'majutsushi/tagbar.git'
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus=1
nnoremap f; :TagbarToggle<cr>

Bundle 'comments.vim'

Bundle 'SuperTab'
let g:SuperTabRetainCompletionType=2

"Bundle 'Shougo/neocomplcache.vim'
"source /usr/share/vim/vimfiles/neocomplcache/neocomplcache.conf

Bundle 'vim-scripts/bufexplorer.zip'
noremap <silent> <CR> :BufExplorer<CR>

Bundle 'scrooloose/syntastic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
highlight SyntasticErrorSign ctermfg=white ctermbg=black

"" python checker
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'

Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

Bundle 'bronson/vim-trailing-whitespace'

Bundle 'vim-scripts/matchit.zip'
"" % match

Bundle 'tpope/vim-endwise'

Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

Bundle "pangloss/vim-javascript"
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

Bundle 'nono/jquery.vim'

Bundle 'ryanss/vim-hackernews'

"Bundle 'Pydiction'
"let g:pydiction_location = '/home/chuangwang/.vim/bundle/Pydiction/complete-dict'
"let g:pydiction_menu_height = 20

"Bundle 'bling/vim-airline'
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

"Bundle 'itchyny/lightline.vim'

"Bundle 'Lokaltog/vim-powerline.git'
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'

Bundle 'thiderman/nginx-vim-syntax'

Bundle 'Glench/Vim-Jinja2-Syntax'

Bundle 'sjl/vitality.vim'
"Bundle 'vim-scripts/Conque-Shell'
Bundle 'Yggdroot/indentLine'
"""""""""""""""""""""
"设置标记一列的背景颜色和数字一行颜色一致
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

filetype plugin indent on
imap jj <ESC>:w!<CR>l
map ew <ESC>:wq<CR>
map ee <ESC>:q!<CR>
map er <ESC>:w<CR>
imap kk <ESC>l

inoremap <C-l> <ESC>$a
inoremap <C-o> <ESC>o
inoremap <C-u> <ESC>cc
inoremap <C-@> <ESC>la
noremap <C-l> :tabprevious<CR>
noremap fl <C-w>w
inoremap <C-i> <tab>

vnoremap <space> y/<C-R>"<CR>

fu! ReplaceBySearch ()
    let currentSearchVal = @/
    echo currentSearchVal
endf

noremap fk :call ReplaceBySearch()<CR>
"noremap fk "::%s/@/

"" statueline
" jamessan's
set statusline=   " clear the statusline for when vimrc is reloaded
	  ""%-0{minwid}.{maxwid}{item}
set statusline+=%<
set statusline+=%2*[%n%H%M%R%W]\        " flags and buf no"
set statusline+=%3*[%F]\                          " file name
set statusline+=%=                           " right align
set statusline+=%4*[%{strlen(&ft)?&filetype:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=\ [%l/%L]\ [%03p%%]\             "Rownumber/total (%))"
set statusline+=[%<%P]        " offset

hi User2 ctermfg=124 ctermbg=black
hi User3 ctermfg=154 ctermbg=black
hi User4 ctermfg=124 ctermbg=black
"hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=#2e373b gui=NONE
"hi CursorLine cterm=underline ctermbg=NONE ctermfg=NONE
"hi Pmenu ctermfg=cyan ctermbg=brown cterm=None
"hi PmenuSel ctermfg=white ctermbg=darkgray cterm=Bold
"hi PmenuSbar ctermbg=darkgray
"hi PmenuThumb ctermfg=white
"hi Search cterm=None ctermbg=blue ctermfg=white
"hi IncSearch  cterm=None ctermbg=blue ctermfg=white
"hi Visual cterm=None ctermbg=LightGrey

set shell=/bin/sh
