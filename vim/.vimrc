set nocompatible

syntax enable

filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

filetype plugin indent on

set number
set ai " 自动锁进
set showmatch " 代码匹配
set bs=2 " 在insert模式下用退格键删除
" set expandtab " 用空格代替tab
set shiftwidth=4
set tabstop=4
set cursorline " 为光标所在行加下划线
set autoread " 文件在vim之外修改过自动读入
set ignorecase " 检索时忽略大小写
set fileencodings=utf-8,gbk " 使用utf-8或gbk打开文件
set termencoding=utf-8
set hls " 检索时高亮现实匹配项
set helplang=cn " 将帮助系统设置为中文
set foldmethod=syntax " 代码折叠
set autochdir " 自动切换当前目录为当前文件所在目录

" if $COLORTERM == 'gnome-terminal'
	set t_Co=256
" endif

" bundle plugin

" solarized theme
set background=dark
colorscheme solarized

" vim-powerline
set laststatus=2
let g:Powerline_symbols='unicode'
