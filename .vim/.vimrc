" Set  configure of  vim by myself

" avoid bugs in previous version
set nocompatible

" display the line number
set nu

" basic settings
set wildmenu

" check file type
filetype on

" record history
set history=500

" Turn on wildmenu, useful on commandline completetion
set wildmenu

" Always show current position
set ruler

" syntax highlight
syntax on

" useful indent setting
set autoindent
set smartindent

" set c indent? I do not know...
set cindent

" show the match result
set showmatch

" check the spell mistakes
let mapleader= ","
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en

" useful for search
" ignore case when searching
set ignorecase
set smartcase
" search while typing
set incsearch

set hlsearch

" set the Tab key 4 blank
set tabstop=4
set shiftwidth=4
set smarttab

" close the completation window
set completeopt=longest,menu

" use the mouse
set mouse=a

" fold the code
set foldmethod=syntax
set foldlevel=100

" set gcc compiler F5 and g++ compiler F6
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
exec "w"
exec "!gcc -Wall % -o %<"
exec "! ./%<"
endfunc

map <F6> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
exec "!g++ -Wall % -o %<"
exec "! ./%<"
endfunc

" Ctags for vim
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags=./tags,~/workspace/OpenFlipper-src/tags,/usr/share/qt4/include/tags
set autochdir

" Taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1

" Cscope search result input into quickfix window
set cscopequickfix=s-,c-,d-,i-,t-,e-
" input the file into vim
" cs add $(PWD)/cscope.out $(PWD)
" set the keymap
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>


" OmniCppComplete settings
set nocp
filetype plugin on
filetype plugin indent on

" SuperTab settings
let g:SuperTabDefaultCompletionType="context"

" MiniBufExplorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0

" NERDTree settings
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

nmap wm :WMToggle<CR>

nmap <F8> :TagbarToggle<CR>
