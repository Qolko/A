#!/bin/bash
# Colours
Red='\033[0;31m'
BRed='\033[1;31m'
URed='\033[4;31m'
Blue='\033[0;34m'
BBlue='\033[1;34m'
UBlue='\033[4;34m'
Green='\033[0;32m'
BGreen='\033[1;32m'
UGreen='\033[4;32m'
Yellow='\033[0;33m'
BYellow='\033[1;33m'
UYellow='\033[4;33m'
Purple='\033[0;35m'
BPurple='\033[1;35m'
UPurple='\033[4;35m'
Cyan='\033[0;36m'
BCyan='\033[1;36m'
UCyan='\033[4;36m'
NC='\033[0m'
REDP=$(tput setaf 1)
GREENP=$(tput setaf 2)
YELLOWP=$(tput setaf 3)
BLUEP=$(tput setaf 4)
PURPLEP=$(tput setaf 5)
CYANP=$(tput setaf 6)
GRAYP=$(tput setaf 7)
NORMAL=$(tput sgr0)
MYIP=$(wget -qO- ifconfig.me/ip);

IP=$(wget -qO- ifconfig.me/ip);
HOST="$(cat /root/host)"
NAMESERVER="$(cat /root/nsdomain)"
PUBKEY="$(cat /etc/slowdns/server.pub)"
Login=qolko-`</dev/urandom tr -dc X-Z0-9 | head -c4`
day="1"
Pass=qolko
echo Ping Host
echo Checking Access Rights...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Member Account: $Login
sleep 0.5
echo Account Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$active_period days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "${Cyan}==============================================================${NC}"
echo -e "${Cyan}|                 SSH & SlowDNS Account Info                 |${NC}"
echo -e "${Cyan}==============================================================${NC}"
echo -e "                  ${Blue}Username${NC}       : ${Blue}$Login${NC}"
echo -e "                  ${Blue}Password${NC}       : ${Blue}$Pass${NC}"
echo -e "${Yellow}==============================================================${NC}"
echo -e "Host           : $IP"
echo -e "Host Name      : $HOST"
echo -e "Name Server    : $NAMESERVER"
echo -e "Public Key     : $PUBKEY"
echo -e "OpenSSH        : 22 , 88"
echo -e "SSL/TLS        : 443"
echo -e "SlowDNS        : 22 , 88 , 443"
echo -e "${Yellow}==============================================================${NC}"
echo -e "                     Expired On : "${Red}$exp${NC}""
echo -e "${Yellow}==============================================================${NC}"
echo""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"
