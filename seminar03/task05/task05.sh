#! /bin/bash
cat $1 | sed '/^$/d' > tmp
cat tmp > $1
rm tmp