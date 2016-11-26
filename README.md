## vim 配置
其实vim也是蛮复杂的，我用vim从大二开始，刚开始总是自己找一些现成的配置，也不知道是什么意思，插件安装也很麻烦，有时候要找很久，也基本是按照自己看来的方式，随便放进去。但当时很享受这个
过程，虽然那时候的vim用的很一般，但是很喜欢，是我对计算机兴趣的很大一个源泉。

几年下来，也积累了不少东西，对vim的追求也发生过比较大的变化。以前追求各种新鲜的功能，各种
补全(c++ , python )，各种炫酷(powerline , airline)，但现在更趋向于简单稳定，易维护。

所以整理了这个配置文件，希望能给大家带来一点方便。

### 安装

我是假设你再一个配有配置的机器上配置vim。 如果你已经有了自己习惯的配置，可以先将你的配置备份
一下，然后再将你的配置融合进来，从而形成习惯你自己的配置。

git clone https://github.com/xiaolongnk/vim-conf ~/.vim
cp ~/.vim/vimrc ~/.vimrc

### 插件

包含的插件.
```shell
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'plasticboy/vim-markdown'
Plugin 'Chiel92/vim-autoformat'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'Raimondi/delimitMate'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'posva/vim-vue'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

```

### 参考资料
1. https://github.com/VundleVim/Vundle.vim 
2. https://github.com/tpope/vim-pathogen
3. https://github.com/Raimondi/delimitMate
4. https://github.com/Valloric/YouCompleteMe#installation
6. https://github.com/vim-airline/vim-airline
5. http://www.xiaozhou.net/from-vim-to-neovim-2016-05-21.html





