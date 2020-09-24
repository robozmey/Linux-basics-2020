#! /bin/bash
cat urls.txt | grep -E "https:\/\/([qwertyuiopasdfghjklzxcvbnm1234567890-]){1,}(\.([qwertyuiopasdfghjklzxcvbnm1234567890-]){1,}){1,}" -n -o > tmp
sed "s/^/<</" tmp > tmp2
sed 's/$/>>/' tmp2
rm tmp
rm tmp2
