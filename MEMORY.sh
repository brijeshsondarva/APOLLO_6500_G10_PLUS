#!/bin/bash
echo "=====================MEMORY======================"
echo""
cat /proc/meminfo |egrep -i "MemTotal|MemFree|MemAvailable"
echo""
dmidecode| grep -i "Memory\ Device" -A32|egrep -i "Locator:\ PROC|Volatile\ size:"|grep -i "Volatile\ Size:\ 64\ GB"|echo "Total populated DIMMs = `wc -l`"
echo ""
dmidecode| grep -i "Memory\ Device" -A32|egrep -i "Locator:\ PROC|Volatile\ size:\ 64\ GB"
