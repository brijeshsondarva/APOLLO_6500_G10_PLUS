#!/bin/bash
echo "=====================PROCESSOR===================="
echo""
dmidecode | grep -i "Processor\ Information" -A53 |egrep -i "Socket\ Designation:|Version:|Status:|Core\ Count:|Thread\ Count:"
