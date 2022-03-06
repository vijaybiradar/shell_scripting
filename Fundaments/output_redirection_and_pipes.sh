#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
rm file42 file33 file1201 | grep file42 
rm file42 file33 file1201 2>&1 | grep file42 
