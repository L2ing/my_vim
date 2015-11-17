"######插件管理 vundle###############
set nocompatible    "be iMproved
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
"required!
Bundle 'gmarik/vundle'

"My Bundles here:/*插件配置格式*/
"
"original repos on github (Github网站上非vim-scripts仓库的插件，按下面格式填写)
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
"vim-scripts repos (vim-scripts仓库里的，按下面格式填写)
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'autocomplpop'
Bundle 'OmniCppcomplete'
"non github repos (非上面两种情况的，按下面格式填写)
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'https://github.com/Lokaltog/vim-powerline.git'

filetype plugin indent on

"/**vundle命令**/
"Brief help
"BundleList - list configured bundles
"BundleInstall(!) - install(update)bundles
"BundleSearch(!)foo - search(or refresh cache first)for foo
"BundleClean(!) - confirm(or auto-approve)removal of unused bundles


"/******以下是插件配置*********/
"The-NERD-tree
map nt :NERDTreeMirror<CR>
map nt :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1
"taglist
"set tags=tags;
set autochdir
let Tlist_Use_Right_Window=1    "让tgtlist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close=1    "同时显示多个文件的tag时，只显示当前文件tag,其他文件tag被折叠
let Tlist_Show_One_File=1   "只显示一个文件中的tag，默认显示多个
let Tlist_Sort_Type='name'  "tag的排序规则按名字排序，默认是在文件中出现的顺序排序
let Tlist_Exit_OnlyWindow=1 "如果taglist是最后一个窗口，则退出vim
"let Tlist_WinWidth=20       "设置窗体宽度为32
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags' "设置我们自己装的ctags的位置
let Tlist_Show_Menu=1   "显示taglist菜单
map T :TlistMirror<CR>
map T :TlistToggle<CR>
"####################################
"powerline
set laststatus=2
set t_Co=8
"######
"SuperTab
let g:SuperTabDefaultCompletionType="context"
"colorscheme desert
set background=dark
colorscheme solarized
set nocompatible
syntax enable
syntax on
set number
set ruler
filetype plugin indent on
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set noerrorbells
set novisualbell
set showmatch
set matchtime=2
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set encoding=utf-8

"######PHP#####
au FileType .php setlocal dict+=/.vim/php_funclist.txt

set tags=~/Documents/jiemian/sys/tags

"将光标移到buffer的底部和顶部的时候保持三行的距离
set scrolloff=3

set cursorline
set cursorcolumn
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=NONE guifg=NONE
