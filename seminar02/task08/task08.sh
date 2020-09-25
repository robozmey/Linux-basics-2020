#! /bin/bash
grep -E "[^[:alpha:]]the[^[:alpha:]]" -i -o hamlet.txt > tmp
grep -E "^the[^[:alpha:]]" -i -o  hamlet.txt >> tmp
grep -E "[^[:alpha:]]the$" -i -o  hamlet.txt >> tmp
cat tmp | wc -w
rm tmp
