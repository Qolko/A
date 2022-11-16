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

echo -e ""
echo -e "${Yellow}==============================================================${NC}"
echo -e ""
echo -e ""
echo -e "    [${Blue}1${NC}] Restart All Services"
echo -e "    [${Blue}2${NC}] Restart OpenSSH"
echo -e "    [${Blue}3${NC}] Restart Stunnel4"
echo -e "    [${Blue}4${NC}] Restart SlowDNS"
echo -e "    [${Blue}x${NC}] Exit"
echo -e ""
read -p "    Select From Options [1-8 or x] :  " Restart
echo -e ""
echo -e "${Yellow}==============================================================${NC}"
sleep 1
clear
case $Restart in
                1)
                clear
                /etc/init.d/ssh restart
                /etc/init.d/stunnel4 restart
                systemctl restart server-sldns
                echo "Restarting SlowDNS (via systemctl): server-sldns."
                systemctl restart client-sldns
                echo "Restarting SlowDNS (via systemctl): client-sldns."
                /etc/init.d/fail2ban restart
                /etc/init.d/cron restart
                echo -e ""
                echo -e "${Blue}==============================================================${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}|           ALL Service Restarted Successfully               |${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}==============================================================${NC}"
                echo -e ""
                echo -e "${BGreen}==============================================================${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}|                            Qolko                           |${NC}"
                echo -e "${BGreen}|                          qolko.com                         |${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}==============================================================${NC}"
                exit
                ;;
                2)
                clear
                /etc/init.d/ssh restart
                echo -e ""
                echo -e "${Blue}==============================================================${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}|           SSH Service Restarted Successfully               |${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}==============================================================${NC}"
                echo -e ""
                echo -e "${BGreen}==============================================================${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}|                            Qolko                           |${NC}"
                echo -e "${BGreen}|                          qolko.com                         |${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}==============================================================${NC}"
                exit
                ;;
                3)
                clear
                /etc/init.d/stunnel4 restart
                echo -e ""
                echo -e "${Blue}==============================================================${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}|          Stunnel4 Service Restarted Successfully           |${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}==============================================================${NC}"
                echo -e ""
                echo -e "${BGreen}==============================================================${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}|                            Qolko                           |${NC}"
                echo -e "${BGreen}|                          qolko.com                         |${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}==============================================================${NC}"
                exit
                ;;
                4)
                clear
                systemctl restart server-sldns
                echo "Restarting SlowDNS (via systemctl): server-sldns."
                systemctl restart client-sldns
                echo "Restarting SlowDNS (via systemctl): client-sldns."
                echo -e ""
                echo -e "${Blue}==============================================================${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}|          SlowDNS Service Restarted Successfully            |${NC}"
                echo -e "${Blue}|                                                            |${NC}"
                echo -e "${Blue}==============================================================${NC}"
                echo""
                echo -e "${BGreen}==============================================================${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}|                            Qolko                           |${NC}"
                echo -e "${BGreen}|                          qolko.com                         |${NC}"
                echo -e "${BGreen}|                                                            |${NC}"
                echo -e "${BGreen}==============================================================${NC}"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac
