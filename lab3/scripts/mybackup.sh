#! /bin/bash

for file in `ls ~ `
do

	if [[ -f $file ]]
	then 	
		echo $file
	  #tar -cvf mybackup $HOME/$file
	fi
done

