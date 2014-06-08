# apt-get_only-update
## 這是什麼？<br />What is this?
這是讓 `apt-get update` 命令*只*更新使用者指定的 sources.list 軟體來源清單的快取資料的程式。通常 Ubuntu 都會在幕後自動更新全軟體來源的快取資料，因次當我們臨時新增一個新的軟體來源時最好跳過所有其他軟體來源快取資料的更新，直接更新那一個軟體來源就好了，這樣就可以節省許多寶貴的時間與網路流量，以及減少 APT 被鎖定無法安裝／移除任何軟體包的時間。
This is for making `apt-get update` command *only* update user-specified sources.list softwawre source list cache.  Usually Ubuntu will update cache data of all software sources in the background automatically, thus when we add a new software source we better skip update process of all other software sources.  This can reduce much administrator's time and network usage, and reduce the time that APT is locked from install/reduce any package.

## 如何安裝？<br />How to install?
在終端機內於專案根目錄下以 root 身份執行 `make install` 即可安裝
Just run `make install` command in the terminal in the project's root directory to install apt-get_only-update

## 如何移除軟體？<br />How to remove software?
在終端機內於專案根目錄下以 root 身份執行 `make uninstall` 即可移除 apt-get_only-update
Just run `make uninstall` command in the terminal in the project's root directory to remove apt-get_only-update

## 命令語法<br />Command syntax
`# apt-get_only-update <APT source.list file>`

`$ sudo apt-get_only-update <APT source.list file>`

## 感謝<br />Credits
此作法最早自下列由 [Treviño](http://askubuntu.com/users/7788/trevino) 所發表的問題得知  
This method is initially known from the question published by [Treviño](http://askubuntu.com/users/7788/trevino).  
[ppa - apt-get update only for a specific repository - Ask Ubuntu](http://askubuntu.com/questions/65245/apt-get-update-only-for-a-specific-repository)

## 作者<br />Authors
[Ｖ字龍(Vdragon)](mailto:pika1021@gmail.com)與其他貢獻者

## 授權條款<br />License
GPL 3.0 或是其更近期的任一版本