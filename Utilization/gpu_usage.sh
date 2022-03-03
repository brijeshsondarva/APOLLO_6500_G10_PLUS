#!/bin/bash

#------Comments------
#GPU=`nvitop|grep -i UTL |awk {'print $13'}|tr '\n' ' '`
GPU=`nvidia-smi |awk {'print $13'}|tr '\n' ' '`
DATE=`date "+%d-%m-%Y"`
File=$DATE
Average_file=average_gpu_$File

#-------GPUs--------
GPU1=`awk '{ total += $7 count++} END {print "GPU0 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU2=`awk '{ total += $8 count++} END {print "GPU1 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU3=`awk '{ total += $9 count++} END {print "GPU2 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU4=`awk '{ total += $10 count++} END {print "GPU3 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU5=`awk '{ total += $11 count++} END {print "GPU4 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU6=`awk '{ total += $12 count++} END {print "GPU5 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU7=`awk '{ total += $13 count++} END {print "GPU6 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`
GPU8=`awk '{ total += $14 count++} END {print "GPU7 = " total/count "%" }' /home/brijesh/Utilization/gpu_report/$File`

#------Generate the file-------
echo "|| GPU Usage on $File || $GPU " >> /home/brijesh/Utilization/gpu_report/$File
echo "Average Usage on $File || $GPU1 || $GPU2 || $GPU3 || $GPU4 || $GPU5 || $GPU6 || $GPU7 || $GPU8 " > /home/brijesh/Utilization/gpu_report/$Average_file
