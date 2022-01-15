#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/SLEDE/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/SLEDE/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i 's/none/psk2/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i '/encryption/a\            set wireless.default_radio${devidx}.key=password' package/kernel/mac80211/files/lib/wifi/mac80211.sh