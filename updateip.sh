#!/bin/bash

git pull
oldip=$(cat yourip)
newip=$(curl ip.6655.com/ip.aspx)
if [[ "$oldip" != "$newip" ]]; then
	echo $newip > yourip
	git commit -a -m '$newip' && git push origin master
fi


