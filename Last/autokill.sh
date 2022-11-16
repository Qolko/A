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

Info="${Green}[ON]${NC}"
Error="${Red}[OFF]${NC}"
ucheck=$(grep -c -E "^# Autokill" /etc/cron.d/kick)
if [[ "$ucheck" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e ""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"
echo -e ""
echo -e "${Yellow}==============================================================${NC}"
echo -e ""
echo -e "     ${Blue}Status Autokill${NC} $sts        "
echo -e ""
echo -e "     [1]  AutoKill After 5 Minutes"
echo -e "     [2]  AutoKill After 10 Minutes"
echo -e "     [3]  AutoKill After 15 Minutes"
echo -e "     [4]  Turn Off AutoKill/MultiLogin"
echo -e "     [x]  Exit"
echo -e "${Yellow}==============================================================${NC}"                                                                                                      
echo -e ""
read -p "     Select From Options [1-4 or x] :  " AutoKill
read -p "     Multilogin Maximum Number Of Allowed: " max
echo -e ""
echo -e ""
sleep o.5
case $AutoKill in
                1)
                clear
                echo -e ""
                echo > /etc/cron.d/kick
                echo "# Autokill" >>/etc/cron.d/kick
                echo "*/5 * * * *  root /usr/bin/kick $max" >>/etc/cron.d/kick
                echo -e ""
                echo -e "${Yellow}==============================================================${NC}"
                echo -e ""
                echo -e "                   Allowed MultiLogin : $max "
                echo -e "                  AutoKill Every  : 5 Minutes "     
                echo -e ""
                echo -e "${Yellow}==============================================================${NC}"                                                                                                                              
                exit                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/kick
                echo "# Autokill" >>/etc/cron.d/kick
                echo "*/10 * * * *  root /usr/bin/kick $max" >>/etc/cron.d/kick
                echo -e ""
                echo -e "${Yellow}==============================================================${NC}"
                echo -e ""
                echo -e "                 Allowed MultiLogin : $max  "
                echo -e "                AutoKill Every : 10 Minutes "
                echo -e ""
                echo -e "${Yellow}==============================================================${NC}"
                exit
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/kick
                echo "# Autokill" >>/etc/cron.d/kick
                echo "*/15 * * * *  root /usr/bin/kick $max" >>/etc/cron.d/kick
                echo -e ""
                echo -e "${Yellow}==============================================================${NC}"
                echo -e ""
                echo -e "                 Allowed MultiLogin  : $max "
                echo -e "                AutoKill Every  : 15 Minutes "
                echo -e ""
                echo -e "=============================================================="
                exit
                ;;
                4)
                clear
                echo > /etc/cron.d/kick
                echo -e ""
                echo -e "${Blue}==============================================================${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}|             AutoKill MultiLogin Turned Off                 |${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}==============================================================${NC}"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac