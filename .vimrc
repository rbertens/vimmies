highlight ColorColumn ctermbg=7
set colorcolumn=72,80
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'davidhalter/jedi-vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set spell spelllang=en_us
set hlsearch
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
map <F3> :tabp<cr>
map <F4> :tabn<cr>
   set nocompatible " explicitly get out of vi-compatible mode
     set noexrc " don't use local version of .(g)vimrc, .exrc
     set background=dark " we plan to use a dark background
  set cpoptions=aABceFsmq
     syntax on " syntax highlighting on
     filetype plugin indent on " load filetype plugins/indent settings
     set autochdir " always switch to the current file directory 
     set backspace=indent,eol,start " make backspace a more flexible
     set backup " make backup files
     set backupdir=~/.vim/backup " where to put backup files
     set clipboard+=unnamed " share windows clipboard
     set directory=~/.vim/tmp " directory to place swap files in
     set fileformats=unix,dos,mac " support all three, in this order
     set hidden " you can change buffers without saving
     set iskeyword+=_,$,@,%,# " none of these are word dividers 
     set mouse=a " use mouse everywhere
     set noerrorbells " don't make noise
     set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
     set wildmenu " turn on command line completion wild style
     set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                     \*.jpg,*.gif,*.png
     set wildmode=list:longest " turn on wild mode huge list
     "set cursorcolumn " highlight the current column
     "set cursorline " highlight current line
     set incsearch " BUT do highlight as you type you 
     set laststatus=2 " always show the status line
     set lazyredraw " do not redraw while running macros
     set linespace=0 " don't insert any extra pixel lines 
     set list " we do what to show tabs, to ensure we get them 
     set listchars=tab:>-,trail:- " show tabs and trailing 
     set matchtime=5 " how many tenths of a second to blink 
     set nostartofline " leave my cursor where it was
     set novisualbell " don't blink
     set number " turn on line numbers
     set numberwidth=5 " We are good up to 99999 lines
     set report=0 " tell us when anything is changed via :...
     set ruler " Always show current positions along the bottom
     set scrolloff=10 " Keep 10 lines (top/bottom) for scope
     set shortmess=aOstT " shortens messages to avoid 
                          " 'press a key' prompt
     set showcmd " show the command being typed
     set showmatch " show matching brackets
     set sidescrolloff=10 " Keep 5 lines at the size
     set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]%{fugitive#statusline()} 
"     set completeopt= " don't use a pop up menu for completions
     set expandtab " no real tabs please!
     set formatoptions=rq " Automatically insert comment leader on return, 
     set ignorecase " case insensitive by default
     set infercase " case inferred by default
     "set nowrap " do not wrap line
     set wrap
     set linebreak
     set nolist
     set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase " if there are caps, go case-sensitive
     set shiftwidth=4 " auto-indent amount when using cindent, 
     set tabstop=8 " real tabs should be 8, and they will show with 
     set foldenable " Turn on folding
     set foldmarker={,} " Fold C style code (only use this as default 
     set foldmethod=marker " Fold on the marker
     set foldlevel=100 " Don't autofold anything (but I can still 
     set foldopen=block,hor,mark,percent,quickfix,tag " what movements
     function SimpleFoldText() " {
         return getline(v:foldstart).' '
     endfunction " }
     set foldtext=SimpleFoldText() " Custom fold text function 
     let b:match_ignorecase = 1 " case is stupid
     let perl_extended_vars=1 " highlight advanced perl vars 
         let Tlist_Auto_Open=0 " let the tag list open automagically
         let Tlist_Compact_Format = 1 " show small menu
         let Tlist_Ctags_Cmd = 'ctags' " location of ctags
         let Tlist_Enable_Fold_Column = 0 " do show folding tree
         let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill 
         let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
         let Tlist_Sort_Type = "name" " order by 
         let Tlist_Use_Right_Window = 1 " split to the right side
         let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
             let tlist_aspjscript_settings = 'asp;f:function;c:class' 
             let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
             let tlist_php_settings = 'php;c:class;d:constant;f:function' 
             let tlist_vb_settings = 'asp;f:function;c:class' 
     map <F12> ggVGg?
     noremap <S-space> <C-b>
     noremap <space> <C-f>
         "map <down> <ESC>:bn<RETURN>
         "map <left> <ESC>:NERDTreeToggle<RETURN>
         "map <right> <ESC>:Tlist<RETURN>
         "map <up> <ESC>:bp<RETURN>
         au BufRead,BufNewFile *.rb,*.rhtml set shiftwidth=2 
         au BufRead,BufNewFile *.rb,*.rhtml set softtabstop=2 
         au BufRead,BufNewFile *.notes set foldlevel=2
         au BufRead,BufNewFile *.notes set foldmethod=indent
         au BufRead,BufNewFile *.notes set foldtext=foldtext()
         au BufRead,BufNewFile *.notes set listchars=tab:\ \ 
         au BufRead,BufNewFile *.notes set noexpandtab
         au BufRead,BufNewFile *.notes set shiftwidth=8
         au BufRead,BufNewFile *.notes set softtabstop=8
         au BufRead,BufNewFile *.notes set tabstop=8
         au BufRead,BufNewFile *.notes set syntax=notes
         au BufRead,BufNewFile *.notes set nocursorcolumn
         au BufRead,BufNewFile *.notes set nocursorline
         au BufRead,BufNewFile *.notes set guifont=Consolas:h12
         au BufRead,BufNewFile *.notes set spell
     au BufNewFile,BufRead *.ahk setf ahk 
 if has("gui_running")
         colorscheme slate " my color scheme (only works in GUI)
         set columns=180 " perfect size for me
         set gfn=Console" My favorite font
         "set guioptions=ce 
         set lines=55 " perfect size for me
         set mousehide " hide the mouse cursor when typing
         map <F8> <ESC>:set guifont=Consolas:h8<CR>
         map <F9> <ESC>:set guifont=Consolas:h10<CR>
         map <F10> <ESC>:set guifont=Consolas:h12<CR>
         map <F11> <ESC>:set guifont=Consolas:h16<CR>
         map <F12> <ESC>:set guifont=Consolas:h20<CR>
 endif

 noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
  endif
endfunction
let g:ctags_statusline=1
set nospell
let g:flake8_quickfix_height=7
let g:flake8_show_in_file=1 
let g:flake8_show_in_gutter=1
let g:flake8_error_marker='EE'
let g:flake8_warning_marker='WW'
autocmd BufWritePost *.py call flake8#Flake8()
set tags=/Users/rbertens/tags
