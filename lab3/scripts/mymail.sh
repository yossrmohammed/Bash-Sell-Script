#! /bin/bash 
for name in `cut -d: -f1 /etc/passwd`
do
	if [[ -d "/home/$name" ]]
	then 
	mail -s "geeting mail" $name < mtemplate

	echo sending mail to $name $?
	fi	
done

