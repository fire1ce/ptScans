#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11
cd $(dirname "$(realpath "$0")")
DATE=`date +%y%m%d%I%M`
URLName=`echo "${URL}" | sed -e 's|^[^/]*//||' -e 's|/.*$||' -e 's|:.*$||'`

URL=$1
if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi


nmap -n -sS -p 1-65535 -T4 -Pn -A -v -oX ./results/${DATE}.nmap.${URLName}.xml --script ssl-enum-ciphers $URLName &&
xsltproc ./results/${DATE}.nmap.${URLName}nmap.xml -o ./results/${DATE}.nmap.${URLName}.html && sleep 2 &&
rm -rf ./results/${DATE}.nmap.${URLName}.xml
