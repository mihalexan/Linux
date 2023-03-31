#!/bin/bash

for run in {1..10}
do
echo -n "Date: "
date +"%H:%M:%S"
echo -n "Processes: "
ps -ef | wc -l
sleep .5
done 


cat /proc/cpuinfo > info.txt
cat /etc/os-release | grep -w NAME | awk '{print $1}' | sed 's/NAME="//' >> info.txt
touch /etc/os-release | grep -w NAME | awk '{print $1}' | sed 's/NAME="//' >> info.txt
touc file-{50..100}.txt
echo "Done"

