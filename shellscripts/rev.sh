#!/bin/bash
set -x
lines=`cat $1 | wc -l`

while [ $lines -gt 0 ];do

        head -$lines $1 | tail -1 >> rev-log
       lines=`expr $lines - 1`
   done
   cat rev-log
   rm rev-log

