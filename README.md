# Mac 系统配置

## 系统设置

### 触控板

- 系统设置 > 触控板
     - 光标与点击
        - [x] 轻拍来点按
        - [x] 辅助点按
        - [x] 查找
        - [x] 三指拖移
    - 滚动缩放
        - [x] 默认全选
    - 更多手势
        - [x] 默认全选

### Dock

- 置于屏幕上的位置：左边
- 设置 Dock 图标更小（大小随个人喜好）
- [x] 自动显示和隐藏 Dock        

### Finder

### 菜单栏

- 去掉蓝牙等无需经常使用的图标
- 将电池显示设置为百分比

### 互联网账户

- 添加 iCloud 用户，同步日历，联系人和 Find my mac 等等


## Xcode

从 `App store` 或苹果开发者网站安装 [Xcode](https://developer.apple.com/xcode/) 。

紧接着，安装` Xcode command line tools`，运行：

    `xcode-select --install`
    
运行命令后，按照指引，你将完成 `Xcode command line tools` 安装。

`译注`:

如果你不是一名 `iOS` 或 `OS X` 开发者，可以跳过安装 `XCode` 的过程，直接安装 `Xcode command line tools` 。安装完成后，你将可以直接在 `terminal` 中使用主要的命令，比如：`make`, `GCC`, `clang`, `perl`, `svn`, `git`, `size`, `strip`, `strings`, `libtool`, `cpp`等等。

如果你想了解 `Xcode command line tools` 包含多少可用的命令，可以到 `/Library/Developer/CommandLineTools/` 查看。


## Homebrew

包管理工具可以让你安装和更新程序变得更方便，目前在 `OS X` 系统中最受欢迎的包管理工具是 [Homebrew](https://brew.sh).

### 安装

在安装 `Homebrew` 之前，需要将 `Xcode Command Line Tools` 安装完成，这样你就可以使用基于 `Xcode Command Line Tools` 编译的 `Homebrew`。

在 `terminal` 中复制以下命令（不包括 $），跟随指引，将完成 Hombrew 安装。

```bash
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

紧接着，我们需要做一件事让通过 Homebrew 安装的程序的启动链接 (在 /usr/local/bin中）可以直接运行，无需将完整路径写出。通过以下命令将 /usr/local/bin 添加至 `$PATH` 环境变量中:

```bash
$ echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

`Cmd+T` 打开一个新的 `terminal` 标签页，运行以下命令，确保 `brew` 运行正常。

```
$ brew doctor
```

-
`译注`：

安装完成后，`Homebrew` 会将本地 `/usr/local` 初始化为 `git` 的工作树，并将目录所有者变更为当前所操作的用户，将来 `brew` 的相关操作不需要 `sudo` 。

### Homebrew Cask

你已经感受到了使用 `Homebrew` 安装命令行程序的便利。那么接下来，我们将通过 `Homebrew Cask` 优雅、简单、快速的安装和管理 `OS X` 图形界面程序，比如 `Google Chrome` 和 `Dropbox`。

### 安装

安装 `Homebrew-cask` 是如此的简单直接，运行以下命令即可完成：

```bash
$ brew install caskroom/cask/brew-cask
$ brew cask install google-chrome // 安装 Google 浏览器
$ brew update && brew upgrade brew-cask && brew cleanup // 更新
```

### 搜索

如果你想查看 `cask` 上是否存在你需要的 `app`，可以到 `caskroom.io` 进行搜索。

### 文件预览插件

有些 插件 可以让 `Mac` 上的文件预览更有效，比如语法高亮、`markdown` 渲染、`json` 预览等等。+

```bash
$ brew cask install qlcolorcode
$ brew cask install qlstephen
$ brew cask install qlmarkdown
$ brew cask install quicklook-json
$ brew cask install qlprettypatch
$ brew cask install quicklook-csv
$ brew cask install betterzipql
$ brew cask install webpquicklook
$ brew cask install suspicious-package
```

### OS X 图形界面程序

```bash
$ brew cask install alfred
$ brew cask install appcleaner
$ brew cask install cheatsheet
$ brew cask install dropbox
$ brew cask install google-chrome
$ brew cask install onepassword
$ brew cask install sublime-text
$ brew cask install totalfinder
```

-
译注： 译者本人并不喜欢 `brew cask` 的安装方式，更倾向于到 `App Store` 或官方下载 `OS X` 图形界面程序。主要因为名字不好记忆、偶尔需要手动更新，另外当你使用 `Alfred` 或 `Spotlight` ，你将发现将程序安装在 `~/Application` 会很方便。


## iTerm2

作为一名开发者，我们常常花上很多时间在终端 上，如同武士的剑，一出手便知高低。所以让我们安装 `Mac` 上最强大的终端 [iTerm2](http://www.iterm2.com/) 吧！写码除虫，居家必备。

在 `Finder` 中，将 iTerm 拖拽进入 Application 文件夹中。然后，你可以在 `Launchpad` 中启动 `iTerm2`。

### 颜色和字体设置及安装配置

- 在 `Keys` -> `Hotkey` 中设置 `command` + `option` + `i` 快速显示和隐藏 `iTerm2` 。
- 在 `Profiles` -> `Default` -> `Check silence bell`
- 下载 [Solarized dark iterm colors](https://github.com/altercation/solarized)，在 `Profiles` -> `Default` -> `Colors` -> `Load Presets` 将其导入，作为默认颜色。
- 在 `Profiles` -> `Text` 改变游标（`cursor`）、文字和颜色，随个人喜好。


[Solarized dark iterm colors](https://github.com/altercation/solarized) 终端主题颜色及 [Source Code Pro字体](https://github.com/adobe-fonts/source-code-pro)的下载安装配置

```bash
$ cd
$ mkdir iTerm2Conf
$ cd iTerm2Conf
$ git clone https://github.com/altercation/solarized
$ git clone https://github.com/adobe-fonts/source-code-pro
```

`Mac OS X` 安装 `Consolas` 字体

```bash
$ brew install cabextract
$ cd ~/Downloads
$ mkdir consolas
$ cd consolas
$ curl -O http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/PowerPointViewer.exe
$ cabextract PowerPointViewer.exe
$ cabextract ppviewer.cab
$ open CONSOLA*.TTF
```

### ZSH

切换 `zsh` 作为第一 `shell`。

```bash
$ sudo chsh /bin/zsh 
# 查看系统中的 shells
$ cat /etc/shells
```

我们将安装 `zsh` ，其拓展功能和主题将由 `oh-my-zsh` 提供。其中`Env.sh` 文件用于维护别名（`aliases`），输出（`exports`）和路径改变（`path changes`）等等，以免影响 `~/.zshrc`。


使用 `Homebrew` 完成 `zsh` 和 `zsh completions` （自动补全）的安装

```bash
$   brew install zsh zsh-completions
```
安装 `oh-my-zsh` 让 `zsh` 获得拓展功能和主题+

```bash
$ curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
```
    
用文本编辑器或 `vim` 打开 `.zshrc` 进行以下编辑:

```bash
ZSH_THEME=pygmalion
alias zshconfig="vi ~/.zshrc"
alias envconfig="vi ~/Projects/config/env.sh"
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)
```   
    
用文本编辑器或 vi 打开 ~/Projects/config/env.sh 进行以下编辑:
    
```bash
#!/bin/zsh

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='vi -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="YOUR NAME"
eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
```


## Tmux

## Vim

## Git

## MySql

## Node.js


