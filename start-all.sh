#!/bin/bash


./ds/start.sh > /dev/null 2>&1 &
./ad/start.sh  > /dev/null 2>&1 &
./idm/start.sh  > /dev/null 2>&1 &
./am/start.sh > /dev/null 2>&1 &
