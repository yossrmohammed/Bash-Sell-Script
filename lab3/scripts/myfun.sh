#!/bin/bash

mysq()
{
	read -p "enter number : " num
       	((square = $num * $num ))
	echo $square;
}

mysq


