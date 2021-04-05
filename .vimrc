colorscheme desert256
syntax on
set nobackup
set nowb
set noswapfile
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set cursorline
set cindent
map 0 ^
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch
set scrolloff=7
set mat=2
set colorcolumn=80
hi colorcolumn ctermbg=235
set number
set backspace=indent,eol,start
set clipboard=unnamed
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red
noremap <up> <C-w><up>
map <down> <C-w><down>
map <left> <C-w><left>
map <right> <C-w><right>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
