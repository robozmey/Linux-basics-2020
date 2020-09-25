#! /bin/bash
x=$((($RANDOM + $RANDOM * (2**1)) % (2**20)))

res=true
for i in $(seq 2 $(($x - 1)))
do
  if [ $(($x % $i)) -eq 0 ]
  then
    res=false
  fi;
done;

echo $x $res