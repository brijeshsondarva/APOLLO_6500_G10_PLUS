#!/bin/bash
#-----Comments------
CPU=$(sar 1 5 | grep "Average" | sed 's/^.* //')
DATE=`date "+%d-%m-%Y"`
File=$DATE
Average_file=average_cpu_$File
Average_comment=`printf Average usage of CPU is `

#------Generate the logs------
CPUUSAGE=$CPU"% 0f CPU Usage"
AVERAGE=`awk '{ total += $4; count++ } END { print total/count }' /home/brijesh/Utilization/cpu_report/$File`

#------Create the file------
echo "|| $File || $CPUUSAGE ||" >> /home/brijesh/Utilization/cpu_report/$File
echo "|| Average CPU usage of $File is = $AVERAGE % ||" > /home/brijesh/Utilization/cpu_report/$Average_file
