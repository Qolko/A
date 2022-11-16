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



if [ -e "/var/log/auth.log" ]; then
        LOG="/var/log/auth.log";
fi
if [ -e "/var/log/secure" ]; then
        LOG="/var/log/secure";
fi
echo -e "${Blue}==============================================================${NC}";
echo -e "${Blue}|--------------=${NC}${Yellow}[ OpenSSH & SlowDNS User Login ]${NC}${Blue}=------------|${NC}";
echo -e "${Blue}|${Red}|   ID   |${NC}   ${Cyan}| Username |${NC}    ${Purple}| IP Address |${NC}                 |";
echo -e "${Blue}==============================================================${NC}";
cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/login-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "sshd\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $9}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
        
printf "%-17s %2s %-17s %2s \n" "    ${REDP}$PID${NORMAL}"    "         ${CYANP}$USER${NORMAL}        "   "    ${PURPLEP}$IP${NORMAL}"
        fi
done
echo "";
echo""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGree#!/bin/bash
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



if [ -e "/var/log/auth.log" ]; then
        LOG="/var/log/auth.log";
fi
if [ -e "/var/log/secure" ]; then
        LOG="/var/log/secure";
fi
echo -e "${Blue}==============================================================${NC}";
echo -e "${Blue}|--------------=${NC}${Yellow}[ OpenSSH & SlowDNS User Login ]${NC}${Blue}=------------|${NC}";
echo -e "${Blue}| ${Red}|   ID   |${NC}        ${Cyan}| Username |${NC}         ${Purple}| IP Address |${NC}      |${NC} ";
echo -e "${Blue}==============================================================${NC}";
cat $LOG | grep -i sshd | grep -i "Accepted password for" > /tmp/login-db.txt
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

for PID in "${data[@]}"
do
        cat /tmp/login-db.txt | grep "sshd\[$PID\]" > /tmp/login-db-pid.txt;
        NUM=`cat /tmp/login-db-pid.txt | wc -l`;
        USER=`cat /tmp/login-db-pid.txt | awk '{print $9}'`;
        IP=`cat /tmp/login-db-pid.txt | awk '{print $11}'`;
        if [ $NUM -eq 1 ]; then
        
printf "%-10s \t%2s \t%2s \n" "    ${REDP}$PID${NORMAL}"    "         ${CYANP}$USER${NORMAL}        "   "    ${PURPLEP}$IP${NORMAL}"
        fi
done
echo "";
echo""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"

echo -e""