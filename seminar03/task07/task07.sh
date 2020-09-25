#!/bin/bash
function rec {
  files=$(ls)
  #echo $files
  for name in $files; do
    if [[ $(file $name) == *directory ]]
    then
      #echo $name
      cd $name
      rec "$1 $name"
      cd ..
    else
      if [[ $name == *.cpp ]]
      then
        #echo $1 $name
        g++ $name -o tmp
        ./tmp
        rm tmp
      fi
    fi
  done
}

rec ""
