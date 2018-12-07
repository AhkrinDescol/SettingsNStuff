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

" Remove GUI clutter
set go=

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
map <F10> :NERDTreeToggle<CR>
map <F11> :Files<CR>

" Core bindings
" Change leader to <Space>
nnoremap <SPACE> <Nop>
map <SPACE> <leader>
" Split-pane navigation shortcuts
map <Leader>l <C-w>l
map <Leader>h <C-w>h
map <Leader>j <C-w>j
map <Leader>k <C-w>k
" Close buffer without writing or override (for splits)
map <Leader>q :q<CR>

" Alternate bindings
map <Leader>a :A<CR>
