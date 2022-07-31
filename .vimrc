" Set compatibilty to vim only
  set nocompatible" Auto text wrapping
  set wrap

" Encoding
  set encoding=utf-8" Show line numbers
  set number" Status bar
  set laststatus=2" Intent width
  set shiftwidth=2
  packloadall
let g:netrw_banner = 0
nmap <Leader>py <Plug>(Prettier)
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_auto_map = v:true
let g:lsc_trace_level= 'verbose'
let g:lsc_reference_highlights = v:true
let g:completor_clang_binary = '/usr/bin/clang++'
let g:ctrlp_map = 'ctrlp'
let g:ctrlp_working_path_mode = 'ra'
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
call plug#begin('~/.vim/plugged')
 "Autocomplete plugin. similar to VSCode
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'cjuniet/clang-format.vim'
Plug 'mhartington/formatter.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'lua' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'zivyangll/git-blame.vim'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Initialize plugin system
call plug#end()
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END 
:syntax on
