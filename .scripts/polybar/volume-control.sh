#!/bin/bash  
VARIABLE=$(pactl get-default-sink)

if [ $1 = "down" ]
then
  $(pactl set-sink-volume $VARIABLE -5%)
elif [ $1 = "up" ]
then 
  $(pactl set-sink-volume $VARIABLE +5%)
fi


echo 'done'
