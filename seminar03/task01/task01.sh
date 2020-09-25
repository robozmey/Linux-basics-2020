#!/bin/bash
x=$(($RANDOM % (2**15)))
echo $x
head -c $x </dev/urandom >rnd.txt