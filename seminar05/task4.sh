#!/bin/sh -l

urls=$(cat README.md | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*" | sed 's/^http[^s]/https:/g')

val=1
for url in $urls
do
  echo "!$url!"
  curl $url > "urls/$val.txt"
  val=$(($val+1))
done
