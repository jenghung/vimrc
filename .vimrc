"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/jenghung/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/jenghung/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ap/vim-css-color'
NeoBundle 'vim-scripts/EasyGrep'      " vv vV  :Grep
NeoBundle 'vim-scripts/Auto-Pairs'    " { ==> }
NeoBundle 'mileszs/ack.vim'           " search string :Ack
NeoBundle 'HTML-AutoCloseTag'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'pangloss/vim-javascript'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" plugin settings.
" airline
set laststatus=2
set ttimeoutlen=50
let g:airline_theme='solarized'
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'


" don't make vim compatible with vi
set nocompatible
" turn on syntax highlighting
syntax on
" and show line numbers
"set number
" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on
filetype indent on
" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8
" Allows you to have multiple buffers open
set hidden
" Lines of code will not wrap to the next line
set nowrap
" Make backspace behave like other editors
set backspace=indent,eol,start
" Automatically indent on new lines
set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent
" Indenting a line with >> or << will indent or un-indent by 4
set shiftwidth=4
" Pressing tab in insert mode will use 4 spaces
set softtabstop=4
" Use spaces instead of tabs
set expandtab
" Highlight matching braces/tags
set showmatch
" Ignore case when searching
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Indent to correct location with tab
set smarttab
" Highlight search matches
set hlsearch
" Search while you enter the query, not after
set incsearch
" More undos
set undolevels=1000
" Vim can set the title of the terminal window
"set title
" Use a visual indicator instead of a beep
set visualbell
" Or just turn error bells off with this
set noerrorbells
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Toggle paste mode with F2
set pastetoggle=<F2>
" disable vim welcome screen
set shortmess+=I
" set cursor line
set cursorline
" auto read when file is changed from outside
set autoread
" no BOM(Byte Order Mark)
set nobomb
" start scrolling when n lines away from margins
" set scrolloff=5
" no *~ backup files
set nobackup
set noswapfile
set nowritebackup
" copy the previous indentation on autoindenting
set copyindent
" set solarized-dark theme
set background=dark
colorscheme solarized

" ignores
set wildignore+=*.o,*.obj,*.pyc,*.class        " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
"set wildignore+=log/**
""set wildignore+=tmp/**

" next and prev tab
" " noremap <F7> gT
noremap <C-n> gt
noremap <C-b> gT

if has('gui_running')
  set guifont=Ubuntu\ Mono\ 13
endif


"http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
endif

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType html setlocal shiftwidth=2 tabstop=2
