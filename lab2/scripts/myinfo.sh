#! /bin/bash

read -p "enter your login name : " lname;
homedir="/home/$lname"

if [ -e $homedir ]
then
ls -l $homedir


 echo "Processes Status : "
ps -f
cp -r $homeDir /tmp
fi


