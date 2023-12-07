#! /bin/bash
 declare -i noofmails=0

while true 
do
newmail=`cat /var/mail/$USER | wc -l` 
if [[ $newmail > $noofmails  ]]
then
	echo NEW MAIL 
fi
noofmails=$newmail



done
sleep 10
