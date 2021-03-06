"
" _   _     ___        _      __     _____ __  __ ____   ____
"| | | |   / _ \ _ __ ( )___  \ \   / /_ _|  \/  |  _ \ / ___|
"| |_| |  | | | | '_ \|// __|  \ \ / / | || |\/| | |_) | |
"|  _  |  | |_| | | | | \__ \   \ V /  | || |  | |  _ <| |___
"|_| |_|___\___/|_| |_| |___/    \_/  |___|_|  |_|_| \_\\____|
"     |_____|
"
"特殊设置
"-------------------------------------------------"
"禁用旧版 vi
set nocompatible
"使 vim 支持各种文件
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"使用编码
set encoding=utf-8
"设置 tab 缩进位数
set tabstop=8
set shiftwidth=8
set softtabstop=8
"打开文件时使光标直接跳转到上一次关闭的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"================================================="

"自定义设置
"-------------------------------------------------"
"设置一个 leader 键
let mapleader=" "
"打开高亮
syntax on
"显示行标
set number
"行标显示相对位置
set norelativenumber
"打开或关闭显示相对位置的形式
map <LEADER>rn :set relativenumber!<CR>
"当前行下面显示一条线
set nocursorline
set wrap
"显示 vim 命令
set showcmd
"命令提示匹配
set wildmenu
map W :w<CR>
map Q :q<CR>
map X :x<CR>
"始终显示下面几行
set scrolloff=10
"调用 figlet 软件生成大字
map <LEADER>bigs :r !figlet
"================================================="

"搜素相关设置
"-------------------------------------------------"
"搜索高亮
set hlsearch
"打开新文件时关闭之前的搜索高亮
exec "nohlsearch"
"搜索记录
set incsearch
"忽略大小写
set ignorecase
"智能匹配【当有大写时关闭忽略大小写
set smartcase
"简单的关闭高亮
noremap <LEADER><CR> :nohlsearch<CR>
"================================================="

"分屏操作
"-------------------------------------------------"
"创建分屏
map sp<up>      :set nosplitbelow<CR>:split<CR>
map sp<down>    :set splitbelow<CR>:split<CR>
map sp<left>    :set nosplitright<CR>:vsplit<CR>
map sp<right>   :set splitright<CR>:vsplit<CR>
"切换分屏
map <LEADER><up>        <C-w>k
map <LEADER><down>      <C-w>j
map <LEADER><left>      <C-w>h
map <LEADER><right>     <C-w>l
"更改分屏大小
map k   :res +5<CR>
map j   :res -5<CR>
map h   :vertical resize-5<CR>
map l   :vertical resize+5<CR>
"================================================="

"标签操作
"-------------------------------------------------"
"标签栏显示设置: 0 - 不显示 1 - 多标签时显示 2 - 始终显示
set showtabline=2
"创建标签/打开文件
map nf  :tabe 
"切换标签
map sf<left>    :tabNext<CR>
map sf<right>   :tabnext<CR>
"================================================="

"编程定义
"-------------------------------------------------"
"python 默认
map pt I#-*- coding:utf-8 -*-<CR><CR>if __name__ == '__main__':<CR><Esc>
"================================================="

"安装插件

