call plug#begin('~/.vim/plugged')
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/a.vim'
Plug 'bfrg/vim-cpp-modern'
call plug#end()

" Indent Stuff
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" Enables relative numbering in normal mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Enables abbrieviations when using Ctrl + C to get back to Normal Mode.
" (Also required to make hybrid-numbering work as desired.)
inoremap <C-c> <ESC>

" Highlights columns 80 and 120
set cc=80,120

" Disables Ex mode
noremap Q <Nop>

" Configure LightLine
set laststatus=2
let g:lightline = {'colorscheme': 'seoul256'}

" Configure CPP Modern
" Prevents reporting errors for curly-braces within square brackets.
let c_no_curly_error = 1

" Theme
colo base16-default-dark
set background=dark
set guifont=Source\ Code\ Pro\ Semibold\ 10

" Function-key bindings
noremap <F10> :NERDTreeToggle<CR>
noremap <F11> :Files<CR>

" Core bindings
" Change leader to <Space> (dirty hack, avoid map)
" map <SPACE> <Nop>
" map <SPACE> <leader>
let mapleader = " "
" Split-pane navigation shortcuts
nnoremap <Leader>l <C-w>l
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
" Close buffer without writing or override (for splits)
nnoremap <Leader>q :q<CR>

" Alternate bindings
nnoremap <Leader>a :A<CR>
