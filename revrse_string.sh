#!/bin/bash
echo "enter a string"
read str

#it  will add space between each letter to conver into array

strspace=` echo "$str" | sed 's/./& /g'`

echo "$strspace"

#it will give length of array

strln=` echo "$strspace" | wc -c` 

strln=`expr $strln - 1`
strln=`expr $strln / 2`

txt=""

for i in $strspace
do
	#it will check for " " if " "dose not present it will cut the value:
	if [ $i != " " ]
	then
		
		txt1=`echo "$strspace" | cut -d " " -f $strln`
		txt=$txt$txt1
		strln=`expr $strln - 1`
		
	fi

done
		echo "$str"
		echo "$txt"
