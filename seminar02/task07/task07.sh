#! /bin/bash
awk '{print $2, $1, $3, $4, $5}' digits.txt > tmp
cat tmp > digits.txt
rm tmp