sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

mkdir ~/.config/nvim
cd ~/.config/nvim
touch init.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/ruanwz/nvimconfig/main/plug.vim
mkdir ~/.config/nvim/vim-plug
touch ~/.config/nvim/vim-plug/plugins.vim

nvim ~/.config/nvim/vim-plug/plugins.vim
---------------------------------------------------------
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

nnoremap <f1> :NERDTreeFocus<CR>
nnoremap <f2> :NERDTReeToggle<CR>
nnoremap <f3> :TagbarToggle<CR>

set termguicolors

set encoding=UTF-8
---------------------------------------------------------

nvim ~/.config/nvim/init.vim
---------------------------------------------------------
source $HOME/.config/nvim/vim-plug/plugins.vim
---------------------------------------------------------

sudo apt-get install exuberant-ctags
sudo apt-get install nodejs


nvim
:PlugStatus
:PlugInstall

Download Fonts from: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Ubuntu/Regular/complete
mv *.ttf ~/.fonts
fc-cache -fv
