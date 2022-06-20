#!/bin/bash
memory=`df -h . | awk -F " " 'NR>1 { print $(NF-1) }' | sed 's/%/ /g'`
if [ $memory -gt 15 ]
then
	echo "memory exceeds throshold value which is $memory" | mail -s "memory utilization" amith4ks@gmail.com
fi
