#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
#with and without standard output eg
echo hello everyone > without_standardoutput.txt
cat without_standardoutput.txt
#redirects standard output to with_standardoutput.txt; This is also works same as above 
echo hello everyone 1> with_standardoutput.txt
cat with_standardoutput.txt
echo thanks for reading1 >> without_standardoutput.txt
cat without_standardoutput.txt
echo thanks for reading2 >> without_standardoutput.txt
cat without_standardoutput.txt
echo thanks for reading3 > without_standardoutput.txt
cat without_standardoutput.txt
#redirects stdout to with_standardoutput.txt
echo thanks for reading1 1>> with_standardoutput.txt
cat listings.txt
echo thanks for reading2 1>> with_standardoutput.txt
cat listings.txt
echo thanks for reading3 1> with_standardoutput.txt
cat with_standardoutput.txt

#standard error eg
ls without_standardoutput.txt with_standardoutput.txt without_standarderror.txt
cat without_standarderror.txt
ls without_standardoutput.txt with_standardoutput.txt without_standarderror.txt 2> with_standarderror.txt
cat with_standarderror.txt

#standard input eg
cat > with_standardinput.txt <<EOF
This is Shell Scripting Course. We are covering IO Redirections.
Thanks.
EOF
cat with_standardinput.txt 




