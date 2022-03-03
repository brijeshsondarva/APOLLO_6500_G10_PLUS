#!/bin/bash

FREEGPU=`nvitop -g |grep -i mem|awk '{if ($13 <=50) print $2}'|sed "s/[^0-9]//g"|sed '1d'| tr '\n' ','`
echo $FREEGPU
#declare -x CUDA_VISIBLE_DEVICES=$FREEGPU
export CUDA_VISIBLE_DEVICES=$FREEGPU

