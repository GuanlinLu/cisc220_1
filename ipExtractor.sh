#!/bin/bash
# Student id: 10199220 Guanlin Lu

var=$(ifconfig|grep "inet addr:"|cut -d: -f2|awk '{ print $1}')


var=${var/// }

for a in $var   
do  
    #echo $a  
    if [[ $a == 127.* ]];then
    echo $a" Local IP"
    elif [[ $a == 192.168.* ]] || [[ $a == 10.* ]];then
    echo $a" Private IP"
    else
    echo $a" Public IP"
    fi

done


