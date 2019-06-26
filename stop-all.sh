#!/bin/bash


./ds/stop.sh > /dev/null 2>&1 &
./ad/stop.sh  > /dev/null 2>&1 &
./idm/stop.sh  > /dev/null 2>&1 &
./am/stop.sh > /dev/null 2>&1 &
