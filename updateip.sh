#!/bin/bash

cd "$( /usr/bin/dirname "$0" )"

git pull
oldip=$(cat yourip)
newip1=$(curl inet-ip.info)
newip2=$(dig +short myip.opendns.com @resolver1.opendns.com)
if [[ "$newip1" == "$newip2" ]];then
	newip=$newip1
else
	newip=$(curl whatismyip.akamai.com)
fi
lasttime=$(date)
echo "Last check time:$(date)" > log
#newip3=$(curl whatismyip.akamai.com)

if [[ "$oldip" != "$newip" ]]; then
	echo $newip > yourip
	echo "IP change to $newip" >>log
	git commit -a -m "$newip" && git push origin master
fi


