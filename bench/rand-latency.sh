#!/bin/bash

for i in {1..10}; do
  array[i]=$(shuf -i 1-100 -n 1)
done

echo "${array[@]}"

for i in {1..10}; do
  sleep ${array[i]}e-3
  ./latency -m15 -c3 -i10000 > out.txt 2> /dev/null
  VAL=`grep average out.txt | awk '{ print $2 }'`
  echo $VAL
done
