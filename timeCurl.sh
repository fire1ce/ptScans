#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11

# Params
URL=$1

while true; do
    sleep 1
    curl -o /dev/null -s -w 'Total: %{time_total}s ' ${URL} ; echo ${URL}
done