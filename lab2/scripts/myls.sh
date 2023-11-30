#! /bin/bash

#ls $@
if [ $1 = "-l" ]
then
ls -l $@ 
elif [ $1 = "-a" ]
then
ls -a $@ 
elif [ $1 = "-d" ]
then
ls -d $@
elif [ $1 = "-i" ]
then
ls -i $@
elif [ $1 = "-R" ]
then
ls -R $@   
fi
