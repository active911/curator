#!/bin/bash

echo "##############################################"
echo "# Curator Cron Job                           #"
echo "#--------------------------------------------#"
echo "# Starting curator process. This will        #"
echo "# periodically run and clean elasticsearch   #"
echo "# indicies that are older than 7 days.       #"
echo "##############################################"

# For some reason, docker logs won't work unless we do this here
echo "Logging" >> /var/log/cron.log

/etc/init.d/cron start

exec tail -f /var/log/cron.log
