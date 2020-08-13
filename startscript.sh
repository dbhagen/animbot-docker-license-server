#!/bin/bash

/opt/rlm/rlmutil rlmhostid
echo "Waiting on file to be placed in /opt/rlm/licenses volume as 'animBot_Enterprise_Edition.lic'"

while [ ! -f /opt/rlm/licenses/animBot_Enterprise_Edition.lic ]
do
  sleep 2 # or less like 0.2
done
ls -l /opt/rlm/licenses/animBot_Enterprise_Edition.lic

/opt/rlm/rlm -c /opt/rlm/licenses -dlog /opt/rlm/logs/rlm-$(date '+%Y-%m-%d-%H-%M-%S').log