set nu
syntax enable
"colorscheme molokai
"set guifont=Consolas\ 12
"====markdown设置====" 
let g:table_mode_corner="|"   
"====open file in chrome browser====" 
nnoremap <Leader> ch :update<Bar>silent ! start %:p<CR>


autocmd vimenter * ++nested colorscheme gruvbox
set background=light   " Setting light mode
"set background=dark    " Setting dark mode
let g:gruvbox_contrast_light = 'medium'	"hard,medium,soft
colorscheme gruvbox
set guifont=Consolas:h12:cANSI
set guifontwide=Microsoft\ Yahei\ Mono:h12
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'zh_CN.UTF-8'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"set showtabline=2
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


set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m

" 按 F11 切换全屏
if has('gui_running') && has("win32")
map <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
imap <F11> :call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

" 透明化
"au GUIEnter * call libcallnr("vimtweak64.dll", "SetAlpha", 222)
"透明化快捷键启动<F9><F10>
noremap <F9> :call libcallnr("vimtweak64.dll", "SetAlpha", 150)<CR>
noremap <F10> :call libcallnr("vimtweak64.dll", "SetAlpha", 255)<CR>

"去波浪线
hi NonText guifg=bg

"启动最大化
autocmd GUIEnter * simalt ~x

"插入时间
:inoremap <F6> <C-R>=strftime("%Y-%m-%d")<CR>

"加载python3.8
set pythonthreedll=python38.dll

"分割窗口移动按键映射
map <C-j> <C-w>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"快捷键F3开启nerdtree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
