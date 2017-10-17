## vim 配置
其实vim也是蛮复杂的，我用vim从大二开始，刚开始总是自己找一些现成的配置，也不知道是什么意思，插件安装也很麻烦，有时候要找很久，也基本是按照自己看来的方式，随便放进去。但当时很享受这个
过程，虽然那时候的vim用的很一般，但是很喜欢，是我对计算机兴趣的很大一个源泉。

几年下来，也积累了不少东西，对vim的追求也发生过比较大的变化。以前追求各种新鲜的功能，各种
补全(c++ , python )，各种炫酷(powerline , airline)，但现在更趋向于简单稳定，易维护。

所以整理了这个配置文件，希望能给大家带来一点方便。

### 安装

我是假设你再一个配有配置的机器上配置vim。 如果你已经有了自己习惯的配置，可以先将你的配置备份
一下，然后再将你的配置融合进来，从而形成习惯你自己的配置。

```
git clone https://github.com/xiaolongnk/vim-conf ~/.vim
cp ~/.vim/vimrc ~/.vimrc
```

### 插件

包含的插件.
```shell
Plugin 'majutsushi/tagbar'
Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdtree'
Plugin 'plasticboy/vim-markdown'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'posva/vim-vue'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

```

做一点简单的说明吧。
command-t 这个很好用的。通过vundle安装完之后，如果对github 访问正常的话，那么上面的这些插件都会
给我们安装好。一般来说，安装好插件就可以了。但是对command-t 是一个二般情况。command-t安装好之后，
需要我们进行一下额外的编译。方法如下：

```
cd ~/.vim/bundle/command-t/
rake make
```
这样command-t 就编译好了。使用的方法也简单。可以参考这个。 在命令行出入一个CommandT就可以了。
![command-t](https://raw.githubusercontent.com/wincent/command-t/media/command-t.gif)

vim-airline也很好用。一般来说要和vim-airline-themes 配合使用。
效果图如下,相关的配置，vimrc中已经配置好了，如果没有特殊需求，不用过多配置了。

![vim-airline](https://camo.githubusercontent.com/ba79534309330accd776a8d2a0712f7c4037d7f9/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3330363530322f313037323632332f34346332393261302d313439352d313165332d396365362d6463616461336631633533362e676966)

需要注明的一点：就是vim-airline 的tabline 的使用。其实就是讲vim 的buffer 展示在嘴上面了。
这样可以看见所有的buffer。并且我还将buffer的数字也显示出来了。这样用:bn来切换buffer就方便
多了。

enjoy! 

### 参考资料
1. https://github.com/VundleVim/Vundle.vim 
2. https://github.com/tpope/vim-pathogen
3. https://github.com/Raimondi/delimitMate
4. https://github.com/vim-airline/vim-airline
5. http://www.xiaozhou.net/from-vim-to-neovim-2016-05-21.html
## tmux 配置


### tmux 简介
tmux 是一个终端复用软件，类似的软件有screen，但是tmux 有一统江湖的趋势。

tmux 有如下好处。
1. session管理。可以在服务器上开一个tmuxsession，比开很多窗口到服务器上去好很多。
2. 终端分割，可以将很大的一个窗口分成若干小块，每一个小块都可以独立操作，可以比较好
的处理一些小需求。
3. 比如大部分用来写代码，一小块用来看程序的运行结果，这样写代码可以和调试代码在同一个tab中
进行，而无需切换tab。
4. 有很多增强性的插件，可以支持鼠标，session保存,选择复制都很方便。

### 安装

下面给出了在mac和linux上的安装方式。一般用包管理器直接下载就好了，如果是mac，需
要装一个reattach-to-user-namespace

```
sudo apt-get install tmux
brew install tmux
brew install reattach-to-user-namespace
```
https://github.com/tmux-plugins/tpm

在安装其他软件之前，需要安装tpm。

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 插件

1. 插件管理 tpm [tpm](https://github.com/tmux-plugins/tpm)
2. session 恢复
3. 支持鼠标滚动 scroll 。
4. 支持复制到clipboard
5. 增强性搜索 copycat

### 配置
详细参见配置文件`tmux.conf`，放在个人目录下，重命名为~/.tmux.conf即可。

1. 支持鼠标，鼠标点击切换panel,鼠标切换window
2. 支持vim复制到系统clipboard。



### 参考资料

1. [tmux plugins](https://github.com/tmux-plugins)
2. [tpm](https://github.com/tmux-plugins/tpm)
3. [tmux-better-mouse-mode](https://github.com/NHDaly/tmux-better-mouse-mode)
4. [tmux-yank](https://github.com/tmux-plugins/tmux-yank)
5. [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect`)
6. [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat)
