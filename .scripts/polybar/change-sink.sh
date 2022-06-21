#!/bin/bash

SINKS=($(pactl list sinks short | awk '{ print $2 }')) 
CURRENT_SINK=$(pactl get-default-sink)
SINKS_LENGTH=${#SINKS[@]}

for ((index=0; index < $SINKS_LENGTH; index++)); do
  if [ ${SINKS[index]} == $CURRENT_SINK ]
    then
      $(pactl set-default-sink ${SINKS[index - 1]})
  fi 

done
