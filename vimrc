"""""""""""""""""""""""""""""""""""""""""""
" 配色主题配置
"""""""""""""""""""""""""""""""""""""""""""
" 暗色主题
" colorscheme molokai		
" 亮色主题
colorscheme gruvbox		

"""""""""""""""""""""""""""""""""""""""""""
" 编码配置
"""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

"""""""""""""""""""""""""""""""""""""""""""
" 基本配置
"""""""""""""""""""""""""""""""""""""""""""
syntax on					" 语法高粱
filetype on					" 自动检测文件类型
set number					" 显示行号
set cindent					" c/c++自动缩进
set showcmd					" 显示使用命令
set tabstop=4				" 制表符宽度
set cursorline				" 当前行高亮
set noexpandtab				" 关闭制表符转空格
set shiftwidth=4			" 缩进宽度
set wildmode=longest,list	" Tab列表

" 可选
" set laststatus=2			" 打开状态栏
" set cursorcolumn  		" 当前列高亮
" set expandtab				" 使用空格代替Tab键
" set softtabstop=6			" Tab键相当于多少个空格数
" set shiftwidth=6			" 行首自动缩进使用的空格数量

"""""""""""""""""""""""""""""""""""""""""""
" 常用快捷键设置
"""""""""""""""""""""""""""""""""""""""""""
" 在当前行下插入一个空行
:map \\ o<c-{>k
" 生成一对圆括号，并进入插入模式
:map \f a{<Enter>}<C-[>O
" 生成一个空代码块
:map \b i{<enter>}<C-[>O
" 添加一个显示error文件的标签页
:map \e :tabedit error<enter>
" 将当前单词转化成大写，并进入插入模式
:map \U gUawA
" 将当前单词转化成小写，并进入插入模式
:map \u guawA
" 在当前工作目录下创建新文件
:map \F :!touch 
" 显示寄存器组的内容
:map \r :reg<enter>

"""""""""""""""""""""""""""""""""""""""""""
" 常见包裹文本的删除
"""""""""""""""""""""""""""""""""""""""""""
:map \( ci(
:map \[ ci[
:map \{ ci{
:map \' ci'
:map \" ci"
:map \< ci<

"""""""""""""""""""""""""""""""""""""""""""
" 打印0～9号寄存器的内容
"""""""""""""""""""""""""""""""""""""""""""
:map \0 "0p
:map \1 "1p
:map \2 "2p
:map \3 "3p
:map \4 "4p
:map \5 "5p
:map \6 "6p
:map \7 "7p
:map \8 "8p
:map \9 "9p

"""""""""""""""""""""""""""""""""""""""""""
" 参数列表快捷键
"""""""""""""""""""""""""""""""""""""""""""
" 显示参数列表
:map \l :args<enter>
" 创建新的参数列表
:map \g :args 
" 切换到下一个表项
:map \n :next<enter>
" 切换到上一个表项
:map \p :prev<enter>
" 添加一个表项
:map \a :argadd 

"""""""""""""""""""""""""""""""""""""""""""
" 标签页的快捷键
"""""""""""""""""""""""""""""""""""""""""""
" 关闭除了当前标签页外的其他标签页
:map \o :tabonly<enter>	
" 关闭当前标签页
:map \c :tabclose<enter>
" 创建一个新的标签页
:map \t :tabnew<enter>

"""""""""""""""""""""""""""""""""""""""""""
"preview-markdown快捷键
"""""""""""""""""""""""""""""""""""""""""""
" 普通模式
nmap <silent> <F8> <Plug>MarkdownPreview
" 插入模式
imap <silent> <F8> <Plug>MarkdownPreview
" 普通模式
nmap <silent> <F9> <Plug>StopMarkdownPreview
" 插入模式
imap <silent> <F9> <Plug>StopMarkdownPreview

"""""""""""""""""""""""""""""""""""""""""""
" toc插件快捷键
"""""""""""""""""""""""""""""""""""""""""""
:map \G :GenTocGFM<enter>
:map \R :GenTocRedcarpet<enter>

"""""""""""""""""""""""""""""""""""""""""""
" netrw配置
"""""""""""""""""""""""""""""""""""""""""""
" 打开netrw的快捷键
:map \E :Ex<enter>
let g:netrw_liststyle = 0				" 设置目录列表的样式：瘦形
let g:netrw_winsize = 20				" 设置文件浏览器窗口宽度为 20%
let g:netrw_preview   = 1				" 以垂直窗口预览文件
let g:netrw_browse_split = 4			" 使用前一次窗口打开文件
let g:netrw_hide = 1					" 显示非隐藏文件
let g:netrw_list_hide = '^\..*,.*@$'	" 隐藏以.开头的文件
let g:netrw_banner = 0					" 不显示帮助信息
let g:netrw_localrmdir = 'trash'		" 默认的删除工具使用 trash
let g:netrw_keepdir = 0					" 跟踪当前浏览目录为工作目录
" 可选
" augroup ProjectDrawer					"自动打开文件浏览器 netrw
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

"""""""""""""""""""""""""""""""""""""""""""
" 插件配置
"""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged') 							" 插件列表开始

Plug 'yianwillis/vimcdoc'									" 中文文档
Plug 'tpope/vim-commentary'									" 注释插件
Plug 'flazz/vim-colorschemes'								" 配色方案
Plug 'godlygeek/tabular'									" 必须插件
Plug 'iamcco/markdown-preview.vim'							" 预览插件
Plug 'iamcco/mathjax-support-for-mkdp'						" 数学公式高亮
Plug 'mzlogin/vim-markdown-toc'								" 自动生成功能强大的TOC(目录)
Plug 'plasticboy/vim-markdown', {'for': ['markdown']}		" 主要Markdown语法高亮插件

call plug#end()												" 插件列表结束

"""""""""""""""""""""""""""""""""""""""""""
" 可选插件
"""""""""""""""""""""""""""""""""""""""""""
" Plug 'skywind3000/vim-keysound'							" 打字音插件
" Plug 'vim-airline/vim-airline'							" 状态栏插件
" Plug 'vim-airline/vim-airline-themes'						" 多样化的主题
