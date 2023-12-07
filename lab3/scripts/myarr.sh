#! /bin/bash
size=0
read -p "enter size of array : " size
while (( $size <= 0  ))
do 
	echo invalid value
	read -p "enter size of array : " size
done
for (( i = 0; i < $size; ++i ))
do
  read -p "enter element number : $((i+1)) : "  arr[$i]
done

echo ${arr[@]}

