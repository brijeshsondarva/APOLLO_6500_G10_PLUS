#!/bin/bash
echo""
echo "----------Smart Array Controller------------"

cat ADUReport.txt |grep -i "device\ summary" -A2|sed '/Device*/d'
cat ADUReport.txt |grep -i "Controller\ Serial\ Number"|sed '/empty/d'
echo""
#----------------We have prefix drive---------------
cat ADUReport.txt |grep -i "Big\ Drive\ Present\ Map" -A13|sed '/0x0*/d'|awk '{ sub(/^[ \t]+/, ""); print }'

#---------------IF MORE DRIVE AVAILABLE ON BAY USE THE BELOW------------------
#cat ADUReport.txt |grep -i "Big\ Drive\ Present\ Map" -A25|grep -i "Physical\ Drive" -B2|awk '{ sub(/^[ \t]+/, ""); print }'
echo""

cat ADUReport.txt |grep -w "Physical\ Drive\ *" -A15|grep -wE "Drive\ Serial\ Number" -B8|grep -wvE "SCSI|SCSIID|Logical|Total|Reserved|Drive\ Model"

echo""
