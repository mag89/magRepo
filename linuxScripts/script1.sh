#!/bin/bash


for i in{1..6}
do
	echo "qaserver$i"
	ssh user@qaserver$i "ps -eo stime,cmd | grep /jdk/bin/ | egrep -Eo "^...... | jmxremote.port=[0-9]+""

done

