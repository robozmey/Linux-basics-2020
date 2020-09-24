#! /bin/bash
grep -E "[::lower::]{0}the[::lower::]{0}" -i hamlet.txt >> tmp
grep -E "^the[::lower::]{0}" -i -o hamlet.txt >> tmp
cat tmp | wc -l
rm tmp