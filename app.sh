#!/bin/bash
python main.py
set i=2
while true
do
let "i=i+1"
python main.py
sleep 720h
done
