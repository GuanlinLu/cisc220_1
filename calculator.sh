#! /bin/bash
# Student Id: 10199220 GuanlinLu 
read -p "Please enter a number:" int1
read -p "Please enter a operation:" ope
read -p "Please enter a number:" int2 
if [ -n "$int1" -a -n "$int2" -a -n "$ope" ];then 
	values1=$( echo $int1 | sed 's/[0-9]//g')
	values2=$( echo $int2 | sed 's/[0-9]//g')
if [ -z"$values1" -a -z "$values2"];then
	if [ "$ope" == '+' ] ;then
		sum=$(($int1 + $int2))
	elif [ "$ope" == '-' ] ;then
		sum=$(($int1 - $int2))
	elif [ "$ope" == '*' ] ;then 
		sum=$(($int1 * $int2))
	elif [ "$ope" == '/' ] ;then
		sum=$(($int1 / $int2))
	else 
		echo " your input is not a operation, please insert a operation!"
		exit 10
		fi
echo "$int1$ope$int2 = $sum"
else 
	echo "What you inser is not a number, please insert a number !"
	exit 11
	fi
else 
	echo "You did not inser any number, Please insert number!"
	exit 12
	fi
