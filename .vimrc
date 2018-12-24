set nocompatible

" Untuk settingan pindah panel
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Untuk bubbling line menggunakan tpope/unimpaired
nmap <C-m> [e
nmap <C-n> ]e

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
Plugin 'ervandew/supertab'
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

Plugin 'mileszs/ack.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'ascenator/L9', {'name': 'newL9'}

" let g:ackprg = 'ag --nogroup --nocolor --column' " buat ack grep (searching word in folder)
let g:ackprg = 'ag --vimgrep'
" let g:ag_working_path_mode="r"

call vundle#end()            " required
filetype plugin indent on    " required

filetype on
set cursorcolumn
set cursorline
set autoindent
filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab "untuk convert dari tab ke space, untuk coding penggunaan tab kurang baik, text editor yang otomatis space(atom, visual studio code"
set ruler
" colorscheme last256
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
set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

let g:airline#extensions#tabline#enabled = 1
