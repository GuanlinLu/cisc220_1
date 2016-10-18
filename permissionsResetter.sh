#!/bin/bash
#Studentid:10199220  GuanlinLu 
#check arg num
if [ $# != 2 ];then
exit 1
fi

if [ $1 == "-s" ];then
	echo "Old            Current            File"
    while read myline
    do
       oldP=$(echo $myline | awk '{ print $1}')
	   fileName=$(echo $myline | awk '{ print $2}')
	   curP=$(ls -l "./"$fileName | awk  '{ print $1}')
	   if [ $oldP != $curP ];then
	   echo $oldP"      "$curP"     "$fileName
	   fi
    done < $2


elif [ $1 == "-r" ];then

    while read myline
    do
       oldP=$(echo $myline | awk '{ print $1}')
	   fileName=$(echo $myline | awk '{ print $2}')
	   curP=$(ls -l "./"$fileName | awk  '{ print $1}')
	   if [ $oldP != $curP ];then
	   uP=${oldP:1:3}
	   gP=${oldP:4:3}
	   oP=${oldP:7:3}
	   
	   chmod "u="$uP "./"$fileName 
	   chmod "g="$gP "./"$fileName 
	   chmod "o="$oP "./"$fileName 
	   echo $fileName" permissions reset from "$curP" to "$oldP
	   fi
	   
    done < $2
	
fi
