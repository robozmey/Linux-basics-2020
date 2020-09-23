#! /bin/bash
sed '/^#/d' main.py > main2.py
cat main2.py > main.py
rm main2.py