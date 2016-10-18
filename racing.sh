#!/bin/bash
#Student id:10199220 Guanlin Lu
read -p "Please insert the number of players:" players
case $players in
1)
echo "You insert 1, but racing game cannot play alone, insert a number more than 1."
;;
2)
echo "You insert 2, game start."
temp=""
line=(0 0)
c=""
i=0
c=0

while ((line[0]<40&&line[1]<40))
	do
		i=0
		clear
		((c=c-1))
		((line[$c]=${line[$c]}+1))
	echo "line[$c] add one"
	echo ${line[*]}
	while ((i<3))
	do
		j=0
		t=""
		while ((j<=5))
			do
				if ((j==line[$i]))
				then
					t="$t|->"
				else 
					t="$t"
				fi
			
		
		((j=j+1))
		done
		echo "$t#LANE$i"
		((i=i+1))
	done
	read c
	done

