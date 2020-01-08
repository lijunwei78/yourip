# yourip
update the extern intelnet IP 

crontab -e 
check per 55 minitues
*/55 * * * * cd /home/jianyang/yourip/ && ./updateip.sh  
