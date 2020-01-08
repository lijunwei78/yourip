# yourip
update the extern intelnet IP 

cron: crontab -e 

#Run updateip per 55 minitues

*/55 * * * * cd /home/jianyang/yourip/ && ./updateip.sh  
