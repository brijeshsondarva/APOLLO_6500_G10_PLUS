#!/bin/bash
echo "===================NIC CARD DETAILS==================="
echo""
dmidecode |grep -i "OEM-specific\ Type" -A10|grep -i "NIC.Slot" -A3
echo ""
echo "===================NIC CONNECTION DETAILS================="
echo""
dmidecode |egrep -i "NIC\ 1|NIC\ 2|NIC\ 3|NIC\ 4" |grep -i af
