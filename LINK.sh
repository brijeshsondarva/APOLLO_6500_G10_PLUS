#!/bin/bash
ip a |egrep -i "lo|ens|docker|virbr"|awk -F ":" '{print $2}'|egrep -i "lo|ens|ib|docker|virbr" > /home/brijesh/linkports.txt
for i in `cat /home/brijesh/linkports.txt`; do ethtool $i|egrep -i "$i|link\ detected"|awk '{print $3}';done
