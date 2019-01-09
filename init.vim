if has('nvim')
	let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
	set guicursor=
end

let $VIM_PATH = "~/.vim/"
if has('nvim')
	let $VIM_PATH = "~/.config/nvim/"
end

call plug#begin($VIM_PATH . "plugged")
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	"colorschemes
	Plug 'fsrc/lyla-vim'
	Plug 'morhetz/gruvbox'
	Plug 'https://gitlab.com/okoshovets/yvcs'
call plug#end()

"---------------------
"-- PLUGIN BINDINGS --
"---------------------

nmap <C-p> :FZF<CR>

"------------
"-- BASICS --
"------------
set nu
set tabstop=4
set shiftwidth=4
set autoindent
set hlsearch
set incsearch
set showmatch
set laststatus=2
set lazyredraw
set cursorline
set showcmd


"-------------
"-- VISUALS --
"-------------

"colors
colorscheme yvpale

"nice tool to trace tabs and eols
set listchars=tab:>.,trail:.
set list

"------------------------
"-- MOVEMENTS AND TOOLS --
"------------------------

"basic movement mappings
nmap <C-k> kzz
nmap <C-j> jzz
nmap <A-k> zk
nmap <A-j> zj

"mappings for tabs
"no mapping for tabnew because idk
nmap <F2> :tabprevious<CR>
nmap <F3> :tabnext<CR>
nmap <F4> :tabclose<CR>
nmap <F5> <C-w><C-]>
nmap <F6> <C-w><C-]><C-w>T
nmap gb gT
nmap gm `

"mappings for terminal
tnoremap <C-q> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l

"folding
set foldmethod=indent

"recursive search when :find is used
set path+=**

"fileencodings to use
set fileencodings=utf8,cp1251

"workflow with system clipboard via ssh
vnoremap <C-c> :w !~/dotfiles/xssh/xsend <CR><CR>

"this is promissing to fix problem with cyrillic
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

"commands to launch prepared scripts
command! E1 w | exec "! clear && ~/.config/nvim/prepared_scripts/1.sh"
command! E2 w | exec "! clear && ~/.config/nvim/prepared_scripts/2.sh"
command! E3 w | exec "! clear && ~/.config/nvim/prepared_scripts/3.sh"
command! E4 w | exec "! clear && ~/.config/nvim/prepared_scripts/4.sh"
command! E5 w | exec "! clear && ~/.config/nvim/prepared_scripts/5.sh"