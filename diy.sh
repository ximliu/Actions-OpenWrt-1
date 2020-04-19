#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================


git clone https://github.com/rufengsuixing/luci-app-adguardhome package/myapp/luci-app-adguardhome
git clone https://github.com/2512500960/zzu-minieap-openwrt package/myapp/zzu-minieap-openwrt
git clone https://github.com/tty228/luci-app-serverchan package/myapp/luci-app-serverchan
sed -i 's#ntfs-3g#antfs-mount#g' package/lean/automount/Makefile
sed -i 's_#src-git_src-git_g' ./feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
