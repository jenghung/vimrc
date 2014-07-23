if has('vim_starting')
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"NeoBundle 'Shougo/neosnippet.vim'
"NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'scrooloose/nerdtree'       "選單
NeoBundle 'bling/vim-airline'         "有顏色的狀態列
NeoBundle 'tpope/vim-fugitive'        " GIT
NeoBundle 'c9s/colorselector.vim'     "可挑選 theme, :SelectColorS
NeoBundle 'msanders/snipmate.vim'     "Like TextMate
NeoBundle 'ap/vim-css-color'          "讓你的 css 有顏色
NeoBundle 'tpope/vim-surround'        "處理 surround :help surround
NeoBundle 'michaeljsmith/vim-indent-object' "vii 選取 {} 內資料
NeoBundle 'tmhedberg/matchit'         " % 跳 {} or tag
NeoBundle 'tpope/vim-ragtag'          " ctrl + x + enter, ctrl + x + space
NeoBundle 'kien/ctrlp.vim'            " ctrl + p , ctrl + g
NeoBundle 'vim-scripts/EasyGrep'      " vv vV  :Grep
NeoBundle 'vim-scripts/Auto-Pairs'    " { ==> } 
NeoBundle 'scrooloose/syntastic'      " 文法檢查
NeoBundle 'mileszs/ack.vim'           " 查詢字串 :Ack

" color theme
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'altercation/vim-colors-solarized'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" jenghung settings.
" set t_Co=256
" set laststatus=2
" set hlsearch
set smartindent
" set tabstop=4
" set shiftwidth=4
" copy from
" https://github.com/kaochenlong/eddie-vim/blob/master/plugin/settings/Settings.vim

set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=50                        " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
" set number
" set numberwidth=4
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=5                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			                        " disable encryption
set synmaxcol=128
" set viminfo=			                    " disable .viminfo file
set ttyfast                           " send more chars while redrawing

filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
try
colorscheme railscasts
catch
endtry

set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=4
set shiftwidth=4
set tabstop=4
set shortmess=Ia                      " remove splash wording

" disable sound on errors
" set visualbell
" set noerrorbells
" set t_vb=
" set tm=500
"
" " file encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le,latin1
" set fenc=utf-8 enc=utf-8 tenc=utf-8
" scriptencoding utf-8
"
"" ignores
set wildignore+=*.o,*.obj,*.pyc,*.class        " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
"set wildignore+=log/**
"set wildignore+=tmp/**

" next and prev tab
" noremap <F7> gT
noremap <C-e> gt

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab

"" カーソル行の色
highlight clear CursorLine
highlight CursorLine gui=underline ctermbg=0

hi TabLine ctermfg=Blue ctermbg=Yellow

" plugin settings.
let g:airline_theme='light'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:ctrlp_open_new_file = 't'

"http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif
