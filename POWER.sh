#!/bin/bash
echo "====================POWER====================="
echo ""
dmidecode |grep -i "System\ Power\ Supply" -A14 |egrep -i "Name:|Serial\ Number:|Status:|Plugged:"
