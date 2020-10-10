# print your code here

SHELL := /bin/bash
CC = g++
CFLAGS = -std=c++11

all: build_fast build_slow run_slow run_slow time clean


build_fast: main_fast.o fast.o
	$(CC) $(CFLAGS) main_fast.o fast.o -o fast

main_fast.o: src/main_fast.cpp src/fast.hpp
	$(CC) $(CFLAGS) -c src/main_fast.cpp

fast.o: src/fast.cpp src/fast.hpp
	$(CC) $(CFLAGS) -c src/fast.cpp

run_fast: fast src/generator.sh
	bash src/generator.sh | xargs ./fast

build_slow: main_slow.o slow.o
	$(CC) $(CFLAGS) main_slow.o slow.o -o slow

main_slow.o: src/main_slow.cpp src/slow.hpp
	$(CC) $(CFLAGS) -c src/main_slow.cpp

slow.o: src/slow.cpp src/slow.hpp
	$(CC) $(CFLAGS) -c src/slow.cpp

run_slow: slow src/generator.sh
	bash src/generator.sh | xargs ./slow

time:
	time $1


.PHONY: clean
clean:
	-rm fast slow *.o