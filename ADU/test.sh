#!/bin/bash
cat ADUReport.txt |grep -w "Physical\ Drive\ *" -A15|grep -wE "Drive\ Serial\ Number" -B8|grep -wvE "SCSI|SCSIID|Logical|Total|Reserved|Drive\ Model"
