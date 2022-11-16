#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);

echo "---------------------------------------------------"
echo "USERNAME          EXP DATE          STATUS"
echo "---------------------------------------------------"
while read expired
do
Account="$(echo $expired | cut -d: -f1)"
ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
exp="$(chage -l $Account | grep "Account expires" | awk -F": " '{print $2}')"
status="$(passwd -S $Account | awk '{print $2}' )"
if [[ $ID -ge 1000 ]]; then
if [[ "$status" = "L" ]]; then
printf "%-17s %2s %-17s %2s \n" "$Account" "$exp     " "${RED}LOCKED${NORMAL}"
else
printf "%-17s %2s %-17s %2s \n" "$Account" "$exp     " "${GREEN}UNLOCKED${NORMAL}"
fi
fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "---------------------------------------------------"
echo "Account number: $AMOUNT user"
echo "---------------------------------------------------"