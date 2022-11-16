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

echo -e "${Yellow}==============================================================${NC}"
echo -e                   "${Cyan}USERNAME${NC}                 ${Purple}EXP DATE${NC}               ${Yellow}STATUS${NC}"
echo -e "${Yellow}==============================================================${NC}"

while read expired
do
ACCOUNT="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $ACCOUNT | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $ACCOUNT | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-30s \t%2s \t%2s \n" "${CYANP}$ACCOUNT${NORMAL}" "${PURPLEP}$exp${NORMAL}     " "${REDP}LOCKED${NORMAL}"
else
printf "%-30s \t%2s \t%2s \n" "${CYANP}$ACCOUNT${NORMAL}" "${PURPLEP}$exp${NORMAL}     " "${GREENP}UNLOCKED${NORMAL}"
fi
fi
done < /etc/passwd
AMOUNT="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo -e "${Blue}==============================================================${NC}"
echo -e "${Blue}|                  Total Account: "$AMOUNT" User                     |${NC}"
echo -e "${Blue}==============================================================${NC}"

echo""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"