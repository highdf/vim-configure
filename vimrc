"基本配置
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set number				" 显示行号
set cursorline			" 当前行高亮
set cindent				  
set noexpandtab			" 关闭制表符转空格
set tabstop=4			" 制表符宽度
set shiftwidth=4		" 缩进宽度
set showcmd				"显示使用命令
syntax on        		"语法高粱
filetype on      		"自动检测文件类型

"暗色主题
 "colorscheme molokai
"亮色主题
 colorscheme gruvbox
 set background=light 

"可选
"set laststatus=2		" 打开状态栏
"set cursorcolumn  " 当前列高亮
"set expandtab      " 使用空格代替Tab键
"set softtabstop=6  " Tab键相当于多少个空格数
"set shiftwidth=6   " 行首自动缩进使用的空格数量

"( 插件列表开始
call plug#begin('~/.vim/plugged') 
"Plug 'preservim/nerdtree'       
" 示例插件：NERDTree
"Plug 'scrooloose/nerdcommenter' 
" 另一个示例插件：快速注释
"Plug 'neoclide/coc-markdown-preview-enhanced'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"翻译插件

"配色方案
Plug 'flazz/vim-colorschemes'

" 必须插件，确保放在其他markdown相关插件之前
Plug 'godlygeek/tabular'

" 主要Markdown语法高亮插件
Plug 'plasticboy/vim-markdown', {'for': ['markdown']}

" 自动生成功能强大的TOC(目录)
Plug 'mzlogin/vim-markdown-toc'

" 可选增强版预览插件 iamcco/markdown-preview.vim 
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" 插件列表结束)
call plug#end()

"快捷键设置
:map \\ o<C-[>k
"在当前行下插入一个空行
:map \f a{<Enter>}<C-[>O
" 生成一对圆括号，并进入插入模式
:map \b i{<enter>}<C-[>O
"生成一个空代码块
:map \e :tabedit error<enter>
"添加一个显示error文件的标签页
:map \zs ^i//<C-[>
"将当前行注释
:map \zd ^2x
"删除当前行的注释
:map \U gUawA
"将当前单词转化成大写，并进入插入模式
:map \u guawA
"将当前单词转化成小写，并进入插入模式
:map \( ci(
:map \[ ci[
:map \{ ci{
:map \' ci'
:map \" ci"
:map \< ci<
"常见包裹文本的删除
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
"打印0～9号寄存器的内容
:map \r :reg<Enter>
"显示寄存器组的内容

"参数列表快捷键
:map \a :args<enter>
"显示参数列表
:map \g :args 
"创建新的参数列表
:map \n :next<enter>
"切换到下一个表项
:map \p :prev<enter>
"切换到上一个表项

"标签页的快捷键
:map \o :tabonly<enter>
"关闭除了当前标签页外的其他标签页
:map \c :tabclose<enter>
"关闭当前标签页
:map \t :tabnew<enter>
"创建一个新的标签页

nmap <silent> <F8> <Plug>MarkdownPreview        
" 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        
" 插入模式
nmap <silent> <F9> <Plug>StopMarkdownPreview    
" 普通模式
imap <silent> <F9> <Plug>StopMarkdownPreview    
" 插入模式
