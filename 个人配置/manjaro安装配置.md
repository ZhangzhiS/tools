### 设置软件源
添加archLinuxcn源	：
/etc/pacman.conf 后加入
```
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch	
```
然后
	`sudo pacman -Syy && sudo pacman -S archlinuxcn-keyring`
更新系统并且添archlinuxcn的密钥		archlinuxcn 着重不要敲成archlinux，不然是没有用的
### 中文输入法
```
	sudo pacman -S fcitx-googlepinyin
	sudo pacman -S fcitx-im# 全部安装
	sudo pacman -S fcitx-configtool# 图形化配置工具
```	
执行完后 在～/.xprofile中加入
```
	exportGTK_IM_MODULE=fcitx
	exportQT_IM_MODULE=fcitx
	exportXMODIFIERS="@im=fcitx"
```
注销或重启后生效
### 解决shublime3不能输入中文（4,5步骤修改要细心）
github中有解决ubuntu下不能输入中文的方法，由于sublime安装位置的原因不能直接使用，需要做一定的修改
ubuntu下安装目录为/opt/sublime_text,启动命令为subl
manjaro下安装位置为/opt/sublime_text_3,启动命令为subl3
1. 克隆该项目到/opt/sublime_text_3中
	git clone https://github.com/lyfeyaj/sublime-text-imfix.git
2. 修改 /opt/sublime_text_3/sublime-text-imfix/src/subl
	cd '/opt/sublime_text_3/sublime-text-imfix/src'
	mv subl subl3
3. 把目录处的sublime_text换成sublime_text_3  共两处，注意文件名不需要修改
	sudo vim subl3
4. 修改 /opt/sublime_text_3/sublime-text-imfix中的sublime-imfix,把subl替换成subl3,把sublime_text目录处换成sublime_text_3 ，注意which等判断语句也需要替换
	sudo vim '/opt/sublime_text_3/sublime-text-imfix/sublime-imfix'
5.  在/opt/sublime_text_3/sublime-text-imfix目录下执行sublime-imfix
	cd /opt/sublime_text_3/sublime-text-imfix
	./sublime-imfix
6. 重启sublime
