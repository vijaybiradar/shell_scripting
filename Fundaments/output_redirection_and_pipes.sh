#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
cat file file1 file2 file3
cat file file1 file2 file3 1>outfile 2>&1
rm file42 file33 file1201 | grep file42 
rm file42 file33 file1201 2>&1 | grep file42 
