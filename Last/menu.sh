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
clear
echo -e ""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"
echo -e ""
echo -e "${Yellow}==========================${NC}${Blue}-Qolko-${Blue}${NC}${Yellow}==========================${NC}"
echo -e "     ${Blue}menu${NC}      : List of Main Commands"
echo -e ""
echo -e "${Yellow}=========================${NC}${Blue}-SSH & SlowDNS-${NC}${Yellow}========================${NC}"
echo -e "     ${Blue}unew${NC}      : Create SSH & SlowDNS Account"
echo -e "     ${Blue}utrial${NC}    : Generate SSH & SlowDNS Trial Account"
echo -e "     ${Blue}urenew${NC}    : Extending SSH & SlowDNS Account Active Life"
echo -e "     ${Blue}ucheck${NC}    : Check logged SSH & SlowDNS User"
echo -e "     ${Blue}ulist${NC}     : SSH & SlowDNS User List"
echo -e "     ${Red}udelete${NC}   : Delete SSH & SlowDNS Account"
echo -e "     ${Red}uremove${NC}   : Remove Expired SSH & SlowDNS"
echo -e "     ${Red}autokill${NC}  : Set up Autokill SSH"
echo -e "     ${Red}uabuse${NC}    : Displays Multi Login SSH & SlowDNS Users"
echo -e "     ${Red}restart${NC}   : Restart Service SSH & SlowDNS"
echo -e ""
echo -e "${Yellow}=============================${NC}${Blue}-SYSTEM-${NC}${Yellow}==========================${NC}"
echo -e "     ${Red}reboot${NC}    : Reboot VPS"
echo -e "     ${Red}exit${NC}      : Exit From VPS "
echo -e ""
echo -e "${Yellow}==============================================================${NC}"
echo -e ""
