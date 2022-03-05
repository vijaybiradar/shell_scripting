#!/bin/bash

##  TOP CPU CONSUMING PROCESS
echo "HIGHEST CPU CONSUMING PROCESS"
echo "........................."
ps aux --sort=-%cpu | awk 'NR==1{print $2,$3,$11}NR>1{if($3!=0.0) print $2,$3,$11}'
echo "........................."
echo " "
echo "TOP 5 CPU CONSUMING PROCESS"
echo "........................."
ps -eo pcpu,pid,user,args --no-headers| sort -t. -nk1,2 -k4,4 -r | head -n 5
echo "........................."
