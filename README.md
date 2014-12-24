Vim 配置
========

Vim 配置及插件，插件以 git submodule 存放，插件使用 pathogen 管理，其中 pathogen 本身也作为 git submodule 存储。

使用方法
--------

### Windows

1. 在用户目录下（`C:\Users\xxx`）下 `git clone https://github.com/tisyang/vimfiles.git`，然后新建一个 `_vimrc` 文件，文件内容为 `runtime vimrc`。
2. 进入 `vimfiles` 目录中，在 `git bash` 中输入 `git submodule update --init` 等待所有 submodule 获取完成即可。
3. 运行 gVim，此时配置和插件都应发挥作用，在 gVim 中输入命令 `:Helptags` 回车即可为所有插件生成帮助索引。

* 注意：在使用 `Helptags` 之后，`vimfiles` 中会产生 `tags` 等文件，你需要将这些加入到 git 的全局忽略列表中，参见 https://help.github.com/articles/ignoring-files/#create-a-global-gitignore
