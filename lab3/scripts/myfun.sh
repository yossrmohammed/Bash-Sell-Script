#!/bin/bash

function mysq
{
       	(( square = $1 * $1 ))
	echo $square;
}

mysq $1


