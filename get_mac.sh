#!/bin/bash

NET=192.168.6

for i in `seq 1 254`
do
{
	ping -w 1 -c 1 $NET.$i  > /dev/null 2>&1
	if [ $? -eq 0 ];then
		arp $NET.$i
	fi 
}&
done

wait
