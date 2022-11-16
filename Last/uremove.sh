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

               today=`date +%d-%m-%Y`
               echo -e "${Red}==============================================================${NC}"
               echo -e "${Red}|                   "REMOVING  EXPIRED USERS"                  |${NC}"
               echo -e "${Red}==============================================================${NC}"
               cat /etc/shadow | cut -d: -f1,8 | sed /:$/d > /tmp/expirelist.txt
               totalaccounts=`cat /tmp/expirelist.txt | wc -l`
               for((i=1; i<=$totalaccounts; i++ ))
               do
               tuserval=`head -n $i /tmp/expirelist.txt | tail -n 1`
               username=`echo $tuserval | cut -f1 -d:`
               userexp=`echo $tuserval | cut -f2 -d:`
               userexpireinseconds=$(( $userexp * 86400 ))
               dateexp=`date -d @$userexpireinseconds`             
               date=`echo $dateexp |awk -F" " '{print $3}'`
               while [ ${#date} -lt 2 ]
               do
               date="0"$date
               done
               while [ ${#username} -lt 15 ]
               do
               username=$username" " 
               done
               monthyear=`echo $dateexp |awk -F" " '{print $2,$6}'`
               echo "echo "Expired- User : $username Expire at : $date $monthyear"" >> /usr/local/bin/alluser
               todaystime=`date +%s`
               if [ $userexpireinseconds -ge $todaystime ] ;
               then
		    	:
               else
               echo "echo "Expired - Username : $username are expired at: $date $monthyear and removed : $today "" >> /usr/local/bin/deleteduser
	           echo -e ""${Red}$username${NC}" was expired at "${Blue}$date${NC}" "${Blue}$monthyear${NC}" removed from VPS."
               userdel $username
               fi
               done
               echo " "
               echo -e "${Green}==============================================================${NC}"
               echo -e "${Green}|              "Successfully Removed Expired Users"            |${NC}"
               echo -e "${Green}==============================================================${NC}"
echo""
echo -e "${BGreen}==============================================================${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}|                            Qolko                           |${NC}"
echo -e "${BGreen}|                          qolko.com                         |${NC}"
echo -e "${BGreen}|                                                            |${NC}"
echo -e "${BGreen}==============================================================${NC}"