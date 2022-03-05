#!/bin/bash
# Checking a service status
function check_database {
if [ "`systemctl is-active mariadb.service`" != "active" ]
then
            echo "Database service was not running. Checking again."
            sleep 1
            check_database
else
echo "Database service is running successfully"
exit 0
fi           }
# Execute the function
check_database
