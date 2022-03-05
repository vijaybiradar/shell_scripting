#!/bin/bash
subject="New login on $(hostname -f)"
email="root"

while true; do

LASTLOGIN=`last | head -1`

if [ x"$PREVLOGIN" = "x" ]; then

PREVLOGIN=$LASTLOGIN

else

if [ "$LASTLOGIN" != "$PREVLOGIN" ];
then
#echo "$LASTLOGIN" | mail -s "$subject" "$email"

echo "$LASTLOGIN $subject"

PREVLOGIN=$LASTLOGIN
fi
fi
sleep 1
done
