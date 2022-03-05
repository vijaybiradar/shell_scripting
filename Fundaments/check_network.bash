#!/bin/bash
# Checking a service status
function check_network {
if [ "`systemctl is-active network.service`" != "active" ]
then
            echo "network.service was not running. Checking again."
            sleep 1
            check_network
else
echo "network.service is running successfully"
exit 0
fi           }
# Execute the function
check_network
