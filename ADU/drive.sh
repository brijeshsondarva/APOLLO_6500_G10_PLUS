#!/bin/bash
function location()
{
echo""
cat ADUReport.txt |egrep -i "Internal Drive Cage at" |awk {'print $11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28'}|sed '/Sense/d'|sort -u
echo""
}
printf "$location"
function driveport()
{
echo $location
cat ADUReport.txt |egrep -i "$location" -A5|grep -v "Product\ Serial\ Number|Status"|sort -u|grep -iE "Serial\ Number|Status|Supported"|sort -u|grep -w "Product\ Serial\ Number"|sed '3d'
}
driveport
#return
