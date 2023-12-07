#!/bin/bash


echo "Type : "

if [ -f $1 ] 
then       
	echo file

elif
[ -d $1 ] 
then
echo directory
fi
echo  Available permissions : 
if [ -r $1 ] 
then
	echo  Read
fi
if [ -w $1 ] 
then       
	echo   Write
fi
if [ -x $1 ] 
then
       	echo  Execute
fi
