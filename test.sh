#!/bin/sh
ramusage=$(free | awk '/Mem/{printf("RAM Usage: %.2f\n"), $3/$2*100}'| awk '{print $3}')

if [ "$ramusage" > 1 ]; then
  touch /var/log/mem.log
  echo "Memory Current Usage is: $ramusage%" >> /var/log/mem.log
  echo "Memory Current Usage is: $ramusage%"
  fi