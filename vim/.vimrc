let mapleader = ","
"--- cscope ---
" source ~/.vim/plugin/cscope_maps.vim
set nocst
" set cscopetag 
set cscopetagorder=1

set scrolloff=8 " Keep 8 lines below and above the cursor

" --- grep set up for C++ ---
set grepprg=grep\ -rin\ --include\ \*.h\ --include\ \*.cpp\ --include\
            \*.cxx\ $*\ ~/pathhere/

" --- make set for top dir ---
set makeprg=make -C\ ~/pathhere/

" --- color ---
colorscheme elflord

" --- line numbers ---
set number

" --- indentation ---
filetype plugin indent on
set tabstop=3              " show existing tab with 3 spaces width
set shiftwidth=3           " when indenting with '>', use 3 spaces width
set expandtab              " On pressing tab, insert 3 spaces

" --- general ---
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hidden                      "Hide buffers
set ignorecase                  "Case insensitive search
set smartcase                   "Case sensitive when search has capitals


" move up/down one row at a time
nnoremap j gj
nnoremap k gk

" swap between src and header (h for header)
source ~/.vim/a.vim
nnoremap <leader>h :A<CR>

" grep for the word under the cursor (g for grep)
nnoremap <leader>g :grep! "\b<C-r><C-w>\b"<cr><cr>:copen<cr>

" go to previous buffer and close (b for back)
" useful when recently searched for something and don't want to keep buffer
" open
nnoremap <leader>b <C-^>:bd#<CR>

" make
nnoremap <leader>m :make<cr>

" Map F8 to save vim session. Restore with 'vim -S
~/today.ses'
noremap <F8>:mksession! ~/today.ses<CR>  
