#!/bin/bash

#Backup Script

### For Code Backup

TIME=`date +%b-%d-%y`            	# This Command will add date in Backup File Name.
FILENAME=backup-$TIME.tar.gz    	# Here we define Backup file name format.
SRCDIR=/etc                    		# Location of Important Data Directory (Source of backup).
DESDIR=/backups            		# Destination of backup file.
tar -czvf $DESDIR/$FILENAME $SRCDIR     # Backup Command 


### For Database Backup
DBNAME=test
DATE=`date +"%Y%m%d"`
SQLFILE=$DBNAME-${DATE}.sql
mysqldump --opt --user=root --password $DBNAME > $DESDIR/$SQLFILE     # Backup Command
