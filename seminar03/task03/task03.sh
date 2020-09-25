#! /bin/bash
read x1 x2
y1=$x1
y2=$x2
while [ $(($y1 * $y2)) != 0 ]; do
  if [ $y1 -gt $y2 ]
  then
    y1=$(($y1%$y2))
  else
    y2=$(($y2%$y1))
  fi
done
echo $x1 $x2 $(($y1 + $y2))