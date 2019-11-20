#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11
cd $(dirname "$(realpath "$0")")

DATE=`date +%y%m%d`
URL=$1

if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi

nikto -Display V -o ./results/${DATE}.Nikto.${ShortURL}.html -Format html -h ${URL}