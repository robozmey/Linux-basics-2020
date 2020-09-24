#! /bin/bash
#i dont understand why this pattern dont work on my laptop
cat urls.txt | grep "https:\/\/([qwertyuiopasdfghjklzxcvbnm1234567890-])+(\.([qwertyuiopasdfghjklzxcvbnm1234567890-])+)+" -n -o > tmp
sed "s/^/<</" tmp > tmp2
cat tmp
sed 's/$/>>/' tmp2
rm tmp
rm tmp2
