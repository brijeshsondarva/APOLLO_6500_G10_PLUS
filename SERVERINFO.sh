#!/bin/bash
echo ""
dmidecode |egrep -i "Base\ Board\ Information|Chassis\ Information" -A10 |egrep -i "Serial\ Number:\ SGH|Product\ Name:"|sort -u
