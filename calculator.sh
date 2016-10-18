#! /bin/bash
# Student Id: 10199220 GuanlinLu 
read -p "Thanks for using the calculator, press 'y' to enter the program or press 'q' to quit" key
if [ "$key" == 'y' ];then
	read -p "Please enter a number:" int1
	read -p "Please enter a operation:" ope
	read -p "Please enter a number:" int2 
# Use the read commond to read the input of number and operation
	if [ -n "$int1" -a -n "$int2" -a -n "$ope" ];then 
#Check the input is void or not
		values1=$( echo $int1 | sed 's/[0-9]//g')
		values2=$( echo $int2 | sed 's/[0-9]//g')
#Check the input is number or not using the sed commond to see if I could switch the string of not
	if [ -z"$values1" -a -z "$values2"];then
		if [ "$ope" == '+' ] ;then
#Use the if condition to check user 's input of operation and perform calculating in different situations
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
#When the input is not a legal operation the program will give a warning.
echo "$int1$ope$int2 = $sum"
else 
	echo "What you inser is not a number, please insert a number !"
	exit 11
	fi
#When the input is not a legal number the program will give a warning.
else 
	echo "You did not inser any number, Please insert number!"
	exit 12
	fi
#When the input is void the program will give a warning.
else  
	echo " You pressed q to quit the calculator."
	exit 13
	fi
