#! /bin/bash
read line < <(cat numbers.txt)
for x in $line; do
  y=$((1))
  for i in $(seq 1 $x);
  do
    y=$(($y*$i))
  done;
  printf "$y "
done
echo
