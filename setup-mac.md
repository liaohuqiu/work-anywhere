
## Mac 重新配置常用系统设置（基础版）

### ️设置 Spotlight 快捷键为 `Option + R`

* 打开 **系统设置**
* 进入 **键盘**
* 点击 **键盘快捷键**
* 选择 **Spotlight**
* 将 **显示 Spotlight 搜索** 设置为 `Option + R`
* 如有冲突，取消原快捷键

---

### ️还原键盘 F1 ～ F12 为标准功能键

* 打开 **系统设置**
* 进入 **键盘**
* 打开 **将 F1、F2 等键用作标准功能键**

  * （需要按亮度、音量等功能时，改用 `Fn + Fx`）

---

### ️启用三指拖移（用于文本选择 / 窗口拖动）

* 打开 **系统设置**
* 进入 **辅助功能（Accessibility）**
* 选择 **指针控制（Pointer Control）**
* 点击 **触控板选项（Trackpad Options）**
* 勾选 **启用拖移（Use Trackpad for dragging）**
* 拖移方式选择 **三指拖移（Three Finger Drag）**

> 启用后：
>
> * 三指拖动窗口
> * 三指滑动可进行文本选择
> * 大幅减少触控板误触疲劳

---

### 启用“轻点来点按”（单触代替物理按压）

* 打开 **系统设置**
* 进入 **触控板**
* 在 **指向与点按**
* 打开 **轻点来点按（Tap to click）**

> 启用后效果：
>
> * **单指轻触 = 单击**
> * **双指轻触 = 右键**
> * 几乎不需要再“按下”触控板，明显降低手指疲劳
> * 非常适合开发 / 长时间编辑 / 远程办公

---

### 关闭“按住键弹出字符选择”（启用连续按键输入）

* 打开 **终端（Terminal）**
* 执行以下命令：

  ```
  defaults write -g ApplePressAndHoldEnabled -bool false
  ```
* 重新登录系统，或重启当前应用使设置生效

> 启用后效果：
>
> * 长按字母键不再弹出重音/变音符号选择框
> * 按键可连续重复输入（如 `aaaaa`）
> * 更符合传统键盘行为
> * 适合编程、终端操作、Vim 等高频输入场景

### 关闭主显示器的 True Tone

* 打开 **系统设置**
* 进入 **显示器**
* 选择 **主显示器**
* 关闭 **True Tone**

> 说明：
>
> * 对开发、设计、截图、远程协作更友好
> * 避免色温随环境变化导致显示不一致

补充一条 **同样是简单、可直接照做的文字版操作提示**，风格与你前面一致：

---

### 使用 Karabiner-Elements 修改键盘映射

从 https://karabiner-elements.pqrs.org/ 下载 Karabiner-Elements，将 karabiner.json 文件复制到 ~/.config/karabiner 目录下，实现：

* fn 和 ctrl 键交换位置
* left option + jkl; 移动光标
* caps lock -> esc，防止误触

### 下载 iTerm2 并配置

从 https://iterm2.com/ 下载 iTerm2，导入 profile 文件即可。

### 安装 Xcode 命令行工具（用于 git 等开发命令）

* 打开 **终端（Terminal）**
* 执行以下命令：

  ```
  xcode-select --install
  ```
* 按提示点击 **安装**
* 等待下载并完成安装

> 安装后效果：
>
> * 可正常使用 `git`、`ssh`、`make`、`gcc/clang` 等基础开发命令
> * Homebrew 等开发工具可正常安装和运行
> * 无需安装完整 Xcode，仅安装命令行工具即可

## 进阶

### 安装常用软件

* 安装 Clash Verge
* 安装 Google Chrome

### 使用 Bash

#### 切换默认 Shell 为 Bash
* 打开 **终端（Terminal）**，执行以下命令：

  ```
  chsh -s /bin/bash
  ```
* 输入当前用户密码并确认
* 重新打开终端使设置生效

#### 配置 Bash

拷贝文件/文件夹:
* .bash_profile
* .bash_profile_simple
* .ssh/

#### 安装 vim_anywhere

git clone https://gitee.com/liaohuqiu/vim_anywhere.git

### 安装 Miniconda

curl -LO  https://repo.anaconda.com/miniconda/Miniconda3-py38_23.11.0-2-MacOSX-x86_64.sh

curl -LO https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-x86_64.sh

bash Miniforge3-MacOSX-x86_64.sh

### 安装 homebrew


### 安装 colima docker

brew install arp-scan nmap netcat ctags
brew install colima docker