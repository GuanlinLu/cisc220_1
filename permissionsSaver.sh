#!/bin/bash

#first get all the files in the dir and subdir
var=$(find ./ -type f | grep -v $0)

#split the data
var=${var/// }
savedPermissions="savedPermissions"

if [ -f "$savedPermissions" ];then
fileNum=1
savedPermissions=$savedPermissions$fileNum
while [ -f "$savedPermissions" ]
do
fileNum=$[$fileNum+1]
savedPermissions=$savedPermissions$fileNum
done
fi

touch $savedPermissions
echo $savedPermissions" created!"

#echo $savedPermissions
for f in $var   
do  
    #echo $a
    filePer=$(ls -l $f | awk  '{ print $1}')
    fileName=${f:2}
    echo $filePer" "$fileName >> $savedPermissions

done


