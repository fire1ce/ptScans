#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11

DATE=`date +%y%m%d`
URL=$1

if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi

# nmap -n -sS -p 1-65535 -T4 -Pn -A -v -oX nmapUDP.xml --script ssl-enum-ciphers $URL &&
nmap -n -Pn -sU --top-ports 100 -oX nmapUDP.xml --script ssl-enum-ciphers $URL &&
xsltproc nmapUDP.xml -o ${DATE}.nmapUDP.${URL}.html && sleep 2 &&
rm -rf nmapUDP.xml
