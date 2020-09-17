#!/bin/bash
ps | grep "tail -f /dev/null" | cut -f 1 -d " " |xargs kill

kill -9 $(ps | grep "tail -f /dev/null" | cut -f 1 -d " ")