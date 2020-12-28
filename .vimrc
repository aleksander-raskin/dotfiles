set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

Plug 'preservim/nerdtree'

Plug 'sainnhe/artify.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'macthecadillac/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'
Plug 'albertomontesg/lightline-asyncrun'
Plug 'rmolin88/pomodoro.vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()


"### Key binding ###
map <C-n> :NERDTreeToggle<CR>

set laststatus=2
set noshowmode
set nocompatible                                        " behave VIM not VI
set number                                              " Line numbering
" autocmd BufWritePre *.pp :%s/\s\+$//e                   " White spaces                 
" autocmd BufNewFile,BufRead *.pp set filetype=ruby       " ruby syntax highlight for puppet 
" autocmd BufNewFile,BufRead *.cf set filetype=yaml       " yaml syntax highlight for cloudformation
" autocmd BufNewFile,BufRead *.toml set filetype=dosini   " ini syntax highlith for rust's toml files
filetype indent plugin on                               " Indent files
" set hidden                                              " make able to switch between buffers without saving them 
set showcmd                                             " show current command
set showmatch                                           " show matching brackets
set hlsearch                                            " highlight searched words
" set backspace=indent,eol,start                          " make able to use backspace in edit mode
" set autoindent                                          " turn on identing 
" set nostartofline                                       " after G not ruin the last line
" set ruler                                               " Which column I am in?
" set laststatus=2                                        " always display status line
" set confirm                                             " ask confirmation instead of failing when file is not saved
" set cmdheight=2                                         " make enough space for display messages
" set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab " tab behaviour (spaces instead of tabs)
" set wildmenu                                            " use command line completion on opening filenames
" set foldenable                                          " use folds
set clipboard=unnamed                                   " for OSX: if I copy lines to buffer, put them to the clipboard as well
" set cul                                                 " highligh cursor's line
" colorscheme peachpuff                                   " colorscheme
" set background=dark                                     " I prefer dark terminal backgrounds
" hi CursorLine   cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white  " cursor line color
" hi CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkblue guifg=white " if cursors column is highlighted use these colors 
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣ " use these symbols for whitespaces (works in my iterm)
" nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>.  " turn on cursor line 


" autocmd BufWinLeave *.* mkview                           " When exiting a file remember the opened line 
" autocmd BufWinEnter *.* loadview                         " When opening a file, move cursor to the previously opened position
" augroup BgHighlight                                      " When multiple buffers are open, show the cursor line only in the active window
"     autocmd!                                               
"     autocmd WinEnter * set cul                             
"     autocmd WinLeave * set nocul                          
" augroup END
