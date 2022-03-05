#!/bin/bash

if [ "$#" = "0" ];
then
echo "Usage: $0 "
exit 1
fi

host=$1
port=$2
email="test@gmail.com"
subject="Script result"

if ping -q -c 4 $host >/dev/null
then

ping_result="OK"
else
ping_result="NOT OK"

fi

2>/dev/null >/dev/tcp/$host/$port
nc_result=`echo $?`

if [ $nc_result != 0 ];
then
port_result="not opened"
else
port_result="opened"
fi

message="Ping to host - ${ping_result}, port $port ${port_result}."

if [ "$ping_result" != "OK" -o "$nc_result" != "0" ];
then
echo "$message"

echo "$message" | mail -s "$subject" $email
else echo "$message"
fi
