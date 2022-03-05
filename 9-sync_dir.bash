#!/bin/bash

#Ask user to enter remote server ip or name

while [[ -z ${RS} ]]

do

echo -n "Remote syncing server ip/name: "

#Save input into variable with name RS

read RS

done

#Ask user to enter remote server user

while [[ -z ${RU} ]]

do

echo -n "Remote syncing server user: "

#Save input into variable with name RU

read RU

done

#Ask user if copy timestamp and preserve permissions, valid input is Yes or No, will ask until valid input

while  [[ "$TS" != "Yes" && "$TS" != "No" ]]

do

echo -n "Copying with timestamp and preserve permissions : Yes/No "

#Save input into variable with name TS

read TS

done

#If user need to copy timestamp and preserve permissions we need to use key -p additionally.

if [ "$TS" = "Yes" ]

then

TS=" -p "

else

#If no need to copy timestamp and preserve permissions, we don't need to use any additional key

TS=""

fi

#Ask user to enter local directory to sync, also check if directory exist

while [[ -z ${LD} || !( -d ${LD}) ]]

do

echo -n "Syncing local directory location: "

#Save input into variable with name LD

read LD

done

#Ask user to enter remote directory

while [[ -z ${RD} ]]

do

echo -n "Remote Syncing directory location: "

#Save input into variable with name RD

read RD

done

echo -n "Syncing ..."

#Run sync with presented parameters

rsync -r $TS ${LD} ${RU}@${RS}:${RD} --progress
