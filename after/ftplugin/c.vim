" C specific settings.
setlocal colorcolumn=80
""" 设置 cindent 选项
" case 标号和 switch 关键字对齐
setlocal cinoptions+=:0
" 函数参数回绕对齐
setlocal cinoptions+=(0
" 独立一行函数返回值不缩进
setlocal cinoptions+=t0

""" 采用4空格缩进
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab

setlocal tags=./tags,tags,../tags,../../tags
