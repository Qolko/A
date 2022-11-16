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
echo "Checking......"
clear
echo " "
echo -e "${Yellow}==============================================================${NC}";
echo " ";
if [ -e "/root/log-limit.txt" ]; then
echo -e "              ${Red}User Who Violate The Maximum Limit"${NC};
echo -e "       Time      -        Username   -  Number of Multilogin"
echo -e "${Yellow}==============================================================${NC}";
cat /root/log-limit.txt
else
echo -e " ${Blue}            The user-limit has not been executed.${NC}"
fi
echo " ";
echo -e "${Yellow}==============================================================${NC}";
echo " ";
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"
echo -e ""