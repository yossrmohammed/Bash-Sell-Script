#! /bin/bash

select item in 'ls' 'ls -a' 'exit'
do
 while [[ $item =  "ls"  ]]
 do 
	 read -p "enter path :" path
	 ls $path
	 break
 done
  while [[ $item =  "ls -a"  ]]
 do
         read -p "enter path :" path
         ls -a $path
	 break
 done
 while [[ $item =  "exit"  ]]
 do
         
	 exit 1
 done

done

