
filetype off                  " required

syntax on

call plug#begin('~/.vim/plugged')

" Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ryanoasis/vim-devicons'

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'            
Plug 'macthecadillac/lightline-gitdiff' 
Plug 'maximbaz/lightline-ale'           
Plug 'albertomontesg/lightline-asyncrun'
Plug 'rmolin88/pomodoro.vim'            
Plug 'christoomey/vim-tmux-navigator'
" let g:lualine = {
"     \'options' : {
"     \  'theme' : 'gruvbox',
"     \  'section_separators' : ['ÓÇ∞', 'ÓÇ≤'],
"     \  'component_separators' : ['ÓÇ±', 'ÓÇ≥'],
"     \  'icons_enabled' : v:true,
"     \},
"     \'sections' : {
"     \  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
"     \  'lualine_b' : [ ['branch', {'icon': 'ÓÇ†',}, ], ],
"     \  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
"     \  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
"     \  'lualine_y' : [ 'progress' ],
"     \  'lualine_z' : [ 'location'  ],
"     \},
"     \'inactive_sections' : {
"     \  'lualine_a' : [  ],
"     \  'lualine_b' : [  ],
"     \  'lualine_c' : [ 'filename' ],
"     \  'lualine_x' : [ 'location' ],
"     \  'lualine_y' : [  ],
"     \  'lualine_z' : [  ],
"     \},
"     \'extensions' : [ 'fzf' ],
"     \}

Plug 'sainnhe/artify.vim'

Plug 'farmergreg/vim-lastplace'


" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Terraform autocomplete
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

" Initialize plugin system
call plug#end()

set laststatus=2
set noshowmode
set nocompatible                                        " behave VIM not VI
set number                                              " Line numbering
filetype indent plugin on                               " Indent files
" set hidden                                              " make able to switch between buffers without saving them 
set showcmd                                             " show current command
set showmatch                                           " show matching brackets
set hlsearch                                            " highlight searched words
set clipboard=unnamed                                   " for OSX: if I copy lines to buffer, put them to the clipboard as well

highlight LineNr ctermfg=grey

"...
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

set tabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set scrolloff=5
set splitright

" https://github.com/juliosueiras/vim-terraform-completion
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
" set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 1

" autoclosing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
