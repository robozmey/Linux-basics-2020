#! /bin/bash
sed 's/^name=/name=Volodya/' file.property > tmp
cat tmp > file.property
sed 's/lastname=/lastname=Rachkin/' file.property > tmp
cat tmp > file.property
rm tmp