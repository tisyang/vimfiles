""" 不兼容 vi
set nocompatible

""" pathogen 插件
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

""" 编码设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gbk,gb18030,latin1

""" 界面设置
if has("gui_running")
    " Vim 菜单语言
    language message zh_CN.UTF-8
    " 隐藏工具栏
    set guioptions-=T
    " 隐藏菜单栏中的撕下此菜单
    set guioptions-=t
    set mousemodel=popup
endif

""" 字体设置
if has("gui_win32")
    set guifont=Consolas:h11
    if has("directx")
        set renderoptions=type:directx
    endif
else
    set guifont=Fira\ Code\ weight=450\ 10
    set guiligatures=!\"#$%&()*+-./:<=>?@[]^_{\|~
endif
""" 特殊符号的显示
set ambiwidth=double
""" 显示行号
set number
""" 语法高亮
syntax on
""" 色彩主题
set background=dark
colorscheme solarized8

""" 总是显示状态行
set laststatus=2

""" 侦测文件类型
filetype plugin on
filetype on
filetype indent on
""" 缩进设置
set cindent
set autoindent
set smartindent
set copyindent
set preserveindent

""" TAB 设置
set shiftround
set smarttab

""" 易用 backspace
set backspace=indent,eol,start
""" 便捷左右移动
set whichwrap=b,s,<,>,[,]
""" 断行模块对亚洲语言的支持
set formatoptions+=mB
""" 保证边界光标上下文有1行
set scrolloff=1

""" 便捷 <Leader>
let mapleader=","
""" 隐藏而不是关闭buffer
set hidden
""" 命令行补全
set wildmenu
""" 设置鼠标支持
set mouse=a
""" 处理未保存或只读文件的时候，弹出确认
set confirm
""" 自动保存
set autowrite
""" 文件被其他程序修改时自动载入
set autoread
""" 高亮显示匹配的括号
set showmatch
""" 搜索时候, 如果都是小写则忽略大小写, 如果有大写则敏感
set ignorecase
set smartcase
""" 在搜索时候，输入的语句的逐字符高亮
set incsearch
""" 搜索后高亮关键词
set hlsearch
""" 打开文件默认不折叠
set foldlevelstart=99

""" 禁用swapfile
set noswapfile
""" 设置较少的 updatetime
set updatetime=1000

""" 设置工作目录为当前文件位置
autocmd BufEnter * silent! lcd %:p:h

""" 非 windows 加载 man.vim
if !has("win32")
    :runtime! ftplugin/man.vim
endif

""" 自动补全设置
" 让 Vim 自动补全菜单行为更人性化
set completeopt=longest,menuone

""" 关闭响铃和屏幕闪烁
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

""" 使用matchit.vim
runtime macros/matchit.vim

"""""""""""""""""""""""""""""""""""""""""""""""  key map
""" 移动到行首行尾键映射 Emacs 风格
"" normal mode
" <C-A> 递增数字功能映射给 <C-H>
nnoremap <C-H> <C-A>
nnoremap <C-A> 0
nnoremap <C-E> $
nnoremap <C-K> D
"" insert mode
inoremap <C-A> <C-O>0
inoremap <C-E> <C-O>$
inoremap <C-K> <C-O>D
"" visual mode
vnoremap <C-A> 0
vnoremap <C-E> $
""" Emacs 风格命令行快捷键
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
cnoremap <C-D> <Del>
cnoremap <C-G> <C-C>
""" 代替原本c_Ctrl-F的键功能
set cedit=<C-X>
""" 插入模式左右移动使用Emacs风格
inoremap <C-F> <Right>
inoremap <C-B> <Left>
""" 插入模式下 Ctrl-S 保存文件
inoremap <C-S> <Esc>:confirm write<CR>

""" 插入模式下映射 <C-Y> 为粘贴
""" 使用 <C-O>p 或者 <C-O>P 并不能够达到效果（出现一个字符偏移）
""" 改为映射 <C-Y> 是因为 <C-V> 可以输入 raw char
inoremap <C-Y> <C-R><C-O>+

""" 搜索后回车键去除高亮显示的搜索结果
nnoremap <CR> :nohlsearch<CR><CR>

""" 普通模式上下行移动视觉上的行而不是物理行
nnoremap j gj
nnoremap k gk

""" 可视模式选择块左移右移缩进后仍然保持选中状态
vmap > >gv
vmap < <gv
