#!/bin/bash
# Setup installer projext SSH + OpenVPN +Websocket + l2tp/IPsec
# auto installer script created by Qolko
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'



echo "installing Auto Script VPS "
echo "Progress..."
echo "Ongoing..."
sleep 1
wget https://raw.githubusercontent.com/Qolko/Auto-Script-VPS/main/AutoScriptVPS.sh && chmod +x AutoScriptVPS.sh && ./AutoScriptVPS.sh
echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Ongoing..."
sleep 3



cd
echo "installing Slowdns "
echo "Progress..."
echo "Ongoing..."
wget https://raw.githubusercontent.com/Qolko/Auto-Script-VPS/main/slowdns.sh && chmod +x slowdns.sh && ./slowdns.sh
sleep 1

echo -e "[ ${green}INFO${NC} ] DONE... ALAT"
sleep 1
echo "Progress..."
echo "Ongoing..."
sleep 3
