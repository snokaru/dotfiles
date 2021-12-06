let g:mapleader = "\<Space>"

syntax on

set termguicolors

set tabstop=4
set softtabstop=4
set expandtab

set smartindent

set shiftwidth=4
set number

set numberwidth=4

set incsearch
set nohlsearch

set splitbelow
set splitright

set hidden

set scrolloff=8
set undofile

set mouse=a

set ignorecase
set smartcase

set relativenumber

set noshowmode

set encoding=utf-8
set nobackup
set nowritebackup

set cmdheight=2

set updatetime=300
set signcolumn=yes

call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox' " colorscheme
Plug 'nvim-lua/plenary.nvim' " telescope requirement
Plug 'nvim-telescope/telescope.nvim' " fuzzy finder
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'itchyny/lightline.vim' " status bar
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

" Auto Complete
Plug 'hrsh7th/nvim-compe'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" CMake
Plug 'cdelledonne/vim-cmake'

call plug#end()

lua require('default')

colorscheme gruvbox
set background=dark

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
