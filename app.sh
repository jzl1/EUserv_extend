#!/bin/bash
python hostloc_get_points.py
set i=2
while true
do
let "i=i+1"
python hostloc_get_points.py
sleep 720h
done
