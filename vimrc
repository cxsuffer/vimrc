set nu
syntax enable
colorscheme molokai
set guifont=Consolas\ 12
“====markdown设置==== 
let g:table_mode_corner="|" 
“====open file in chrome browser==== 
nnoremap <Leader> ch :update<Bar>silent ! start %:p<CR>


set nu
syntax enable
colorscheme molokai
set guifont=Consolas:h12:cANSI
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'zh_CN.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set noundofile
set nobackup
set noswapfile
set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本

#tmux.conf
set -g prefix C-x
unbind C-b
#up
bind-key k select-pane -U
#down
bind-key j select-pane -D
#left
bind-key h select-pane -L
#right
bind-key l select-pane -R
setw -g mode-keys vi
#terminal screen
set -g default-terminal "xterm-256color"
