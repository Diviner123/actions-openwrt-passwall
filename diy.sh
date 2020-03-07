#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/0.10.10.1/g' package/base-files/files/bin/config_generate

# OpenAppFilter
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter

# luci-app-k3screenctrl
git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/luci-app-k3screenctrl

# luci-theme-argon
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

#luci-app-smartdns-compat
git clone https://github.com/ujincn/luci-app-smartdns-compat package/luci-app-smartdns-compat


./scripts/feeds update -a
./scripts/feeds install -a
