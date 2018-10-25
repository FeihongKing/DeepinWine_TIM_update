#!/bin/bash
echo         建立临时目录/tmp/tim_download
mkdir         /tmp/tim_download
rm         /tmp/tim_download/*
echo         进入目录/tmp/tim_download
cd         /tmp/tim_download
echo         正在从https://qd.myapp.com/myapp/qqteam/tim/down/下载tim_pc.exe
wget         https://qd.myapp.com/myapp/qqteam/tim/down/tim_pc.exe
echo         文件下载完成，正在初始化安装环境
export         WINEPREFIX=~/.deepinwine/Deepin-TIM
echo         正在安装tim_pc.exe到~/.deepinwine/Deepin-TIM
deepin-wine tim_pc.exe
echo         删除下载文件及目录
rm         /tmp/tim_download/*
rmdir         /tmp/tim_download
echo         安装结束
