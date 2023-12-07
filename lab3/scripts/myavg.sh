#!/bin/bash

read -p "enter size of array : " size

while (( $size <= 0  ))
do
	echo invalid value
	read -p "enter size of array : " size
done

sum=0
for (( i = 0; i < $size; ++i ))
do
  read -p "enter element number : $((i+1)) : " value
  arr[$i]=value
  ((sum += $value))
done

echo $sum/$size  | bc -l
