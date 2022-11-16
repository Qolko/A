#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
IZIN=$( curl http://vip.qolko.me:81/akses | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
read -p "Username SSH to Delete : " User

if getent passwd $User > /dev/null 2>&1; then
        userdel $User
        echo -e "User $User was removed."
else
        echo -e "Failure: User $User Not Exist."
fi