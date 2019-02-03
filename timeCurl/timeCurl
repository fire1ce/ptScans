#!/bin/bash

# Params
URL=$1

while true; do
    sleep 1
    curl -o /dev/null -s -w 'Total: %{time_total}s ' ${URL} ; echo ${URL}
done