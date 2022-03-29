:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin('~/.config/nvim/autoload/plugged')
        
       Plug 'sheerun/vim-polyglot' " Better Syntax Support
       Plug 'scrooloose/NERDTree' " File Explorer
       Plug 'jiangmiao/auto-pairs' " Auto pairs for '(', '[', '{'
       Plug 'vim-airline/vim-airline' "Bootom Bar
       Plug 'tpope/vim-commentary' "for commenting gcc
       Plug 'ayu-theme/ayu-vim' "Color Schema
       Plug 'ryanoasis/vim-devicons'
       Plug 'tc50cal/vim-terminal'
       Plug 'terryma/vim-multiple-cursors' " Ctrl + N for multiple cursors
       Plug 'preservim/tagbar' " Tagbar for code navigation
       Plug 'neoclide/coc.nvim' " Auto Completion
       Plug 'github/copilot.vim'
        
call plug#end()
set termguicolors
set encoding=UTF-8

let mapleader = ","
nmap <leader>d :NERDTreeToggle<cr>
nmap <leader>D :NERDTreeFind<cr>

imap <C-j> <Plug>(copilot-next)
imap <C-k> <Plug>(copilot-previous)

