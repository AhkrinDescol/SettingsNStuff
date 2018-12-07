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

" Enables Relative Numbering in Normal Mode
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
inoremap <C-c> <ESC>

" Remove GUI Clutter
set go=

" Configure LightLine
set laststatus=2
let g:lightline = {'colorscheme': 'seoul256'}

" Configure CPP Modern
let c_no_curly_error = 1

" Theme
colo base16-default-dark
set background=dark
set guifont=Source\ Code\ Pro\ Semibold\ 10

" Function-Key Bindings
map <F10> :NERDTreeToggle<CR>
map <F11> :Files<CR>

" Core Bindings
nnoremap <SPACE> <Nop>
map <SPACE> <leader>

" Alternate bindings
map <Leader>a :A<CR>
