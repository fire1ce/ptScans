#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11

DATE=`date +%y%m%d`
URL=$1

if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi

nmap -n -sS -p 1-65535 -T4 -Pn -A -v -oX nmap.xml --script ssl-enum-ciphers $URL &&
xsltproc nmap.xml -o ${DATE}.nmap.${URL}.html && sleep 2 &&
rm -rf nmap.xml
