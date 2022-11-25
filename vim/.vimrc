call plug#begin()
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'joshdick/onedark.vim'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'tpope/vim-rails'
call plug#end()

let mapleader = " " " map leader to Space
let g:airline_theme='onedark'
let g:fzf_command_prefix = 'Fzf'
let g:fzf_buffers_jump = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif

" Settings
syntax on
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set noexpandtab
set smartindent 
set nowrap
set listchars=tab:>-,trail:.,nbsp:.,space:.
set list
set cursorline
colorscheme onedark

" Mappings

" remap the esc key to exit insert mode 
:imap jk <Esc>
:imap kj <Esc>

" toggle the file tree
noremap <silent> <leader>e :NERDTreeToggle<CR>

" fuzzy finder mappings
nnoremap <silent> <leader>ff :FzfFiles<CR>
nnoremap <silent> <leader>O :FzfFiles!<CR>
cnoremap <silent> <C-p>  :FzfHistory:<CR>
cnoremap <silent> <C-_> <ESC>:FzfHistory/<CR>
nnoremap <silent> <leader>fb :FzfBuffers<CR>
nnoremap <silent> <leader>` :FzfMarks<CR>
nnoremap <silent> <F1> :FzfHelptags<CR>
inoremap <silent> <F1> <ESC>:FzfHelptags<CR>
noremap <silent> <leader>; :FzfCommands<CR>
nnoremap <silent> <leader>1 :FzfBLines<CR>
inoremap <silent> <F3> <ESC>:FzfSnippets<CR>
