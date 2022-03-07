#!/bin/bash
# Author : Vijaykumar S Biradar
# Script follows here:
#standard output eg
echo hello everyone > listings
cat listings
echo thanks for reading1 >> listings
cat listings
echo thanks for reading2 >> listings
cat listings
echo thanks for reading3 > listings
cat listings
#standard error eg
cat listings123
cat listings123 2>&1
cat listings123
#standard input eg
cat <<EOF
This is Shell Scripting Course. We are covering IO Redirections.
Thanks.
EOF
cat <EOF
This is Shell Scripting Course. We are covering IO Redirections.
Thanks.
EOF



