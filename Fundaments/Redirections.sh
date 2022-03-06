#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
touch file1
ls -ltrh file1 
ls -ltrh file1 > STDOUT
cat STDOUT 
ls -ltrh file2
ls -ltrh file1 file2 2> STDERR
cat STDERR 
ls -ltrh file1 file2 2> STDERR_STDOUT 1>&2
cat STDERR_STDOUT 
