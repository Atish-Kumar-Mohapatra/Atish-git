#!/bin/bash

echo -n "Enter a number "
read num

i=1
while [ $i -le $num ] 
do
	j=2
	prime=Y
	while [ $j -le $(expr $i / 2 + 1) ]
	do
		#echo $i $j $(expr $i % $j)
		if [ $(expr $i % $j) -eq 0 ] && [ $i -ne 1 ] && [ $j -ne $i ]
		then
			prime=N
			break
		fi
		j=$(expr $j + 1)
	done 
	if [ $prime = Y ]
	then
		echo -n "$i "
	fi
	i=$(expr $i + 1)
done
echo ""
