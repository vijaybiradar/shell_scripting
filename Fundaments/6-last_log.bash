#!/bin/bash
#Last Logins
echo ....................................................
last

echo ....................................................
echo ""
awk -F: '{cmd = "last "$1; cmd | getline result;printf "%s", result}' /etc/passwd
