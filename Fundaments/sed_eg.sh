#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
#stream editor
echo Sunday | sed 's:Sun:Mon:' > today 
cat today
echo Sunday | sed 's_Sun_Mon_' > today 
cat today
echo Sunday | sed 's|Sun|Mon|' > today 
cat today
#interactive editor
echo Sunday | sed -i 's:Sun:Mon:' today 
cat today
echo Sunday | sed -i 's_Sun_Mon_' today 
cat today
echo Sunday | sed 's|Sun|Mon|'  today 
cat today
