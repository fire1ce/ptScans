#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11
cd $(dirname "$(realpath "$0")")

DATE=`date +%y%m%d%I%M`
URL=$1
ShortURL=${URL#*//} #removes stuff upto // from begining
UrlName = "${URL#*//}" | sed -e 's|^[^/]*//||' -e 's|/.*$||' -e 's|:.*$||'


if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi



nmap -sU -sV -p 1-65535 -T4 -oX ./results/${DATE}.nmap.${UrlName}.xml --script ssl-enum-ciphers $UrlName &&
xsltproc ./results/${DATE}.nmap.${UrlName}.xml -o ./results/${DATE}.nmap.${UrlName}.html && sleep 2 &&
rm -rf ./results/${DATE}.nmap.${UrlName}xml



