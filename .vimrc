set nocompatible

" Untuk settingan pindah panel
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Untuk bubbling line menggunakan tpope/unimpaired
nmap <C-m> [e
nmap <C-b> ]e

" Untuk setting search buffer
nmap <leader>b :CtrlPBuffer<cr>

" Untuk setting :bd yaitu delete buffer
nmap <leader>q :bd<Return>
" Untuk setting pindah buffer
noremap [w :bp<CR>
noremap ]w :bn<CR>

" Untuk setting CtrlSF (search in directory) syarat ack
nmap <leader>f :CtrlSF<Space>

" Untuk pindah tab antara buffer
" ]b  dan [b

" Untuk multiple cursor CTRL-N di kata yang mau diganti"

" Clear Hightlight Search
map <Esc> :noh<cr>

"Buat indent di xterm
" set listchars=tab:\¦\
" set list

" let g:indentLine_char = '¦'
" let g:indentLine_setColors = 0


" BUAT JAVAC
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
map <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>

autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'tomtom/checksyntax_vim'
" Plugin 'gilsondev/searchtasks.vim'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdtree'
" Plugin 'valloric/YouCompleteMe'
Plugin 'ervandew/supertab' "auto complete
Plugin 'Yggdroot/indentLine'
" Plugin 'wesQ3/vim-windowswap'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-endwise'
Plugin 'janko-m/vim-test'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs' "otomatis nutup kurung atau nutup quote)
Plugin 'terryma/vim-multiple-cursors' "multiple cursor untuk vim
" Plugin 'rsense/rsense'
" Plugin 'Shougo/neocomplcache-rsense.vim'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
" Plugin 'lifepillar/pgsql.vim' best plugin for postgre
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'  "pengganti ack.vim
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}

" let g:ackprg = 'ag --nogroup --nocolor --column' " buat ack grep (searching word in folder)
" let g:ackprg = 'ag --vimgrep'
" let g:ag_working_path_mode="r"

call vundle#end()            " required
filetype plugin indent on    " required

filetype on
set cursorcolumn
set cursorline
set ignorecase "pencarian fitur"
set autoindent
filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "untuk convert dari tab ke space, untuk coding penggunaan tab kurang baik, text editor yang otomatis space(atom, visual studio code"
set ruler
" colorscheme last256
colorscheme 0x7A69_dark
filetype indent plugin on
set visualbell

" SET HYBRID (RELATIVE NUMBER AND NUMBER)
" turn hybrid line numbers on
set number relativenumber
set nu rnu

" turn hybrid line numbers off
" set nonumber norelativenumber
" set nonu nornu

" toggle hybrid line numbers
" :set number! relativenumber!
" :set nu! rnu!

" powerline
" set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" Setting Powerline Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:powerline_pycmd = 'py3'
let g:pymcd_powerline="py3"


" SyntasticCheck
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 
