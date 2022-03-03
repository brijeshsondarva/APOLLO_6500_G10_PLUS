#!/bin/bash

Date=$1
Average_file=average_cpu_$1

AVG=`awk '{ total += $4; count++ } END { print total/count }' $1`
echo "|| Average CPU usage of $1 is = $AVG % ||" > /home/brijesh/Utilization/cpu_report/$Average_file
echo "|| User that file for generate particular date average utilization. || i.e.: sh avg.sh 01-01-2022 ||"
