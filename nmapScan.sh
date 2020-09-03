#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11
cd $(dirname "$(realpath "$0")")
DATE=$(date +%y%m%d%I%M)
URL=$1
DomainName=$(echo "${URL}" | sed -e 's|^[^/]*//||' -e 's|/.*$||' -e 's|:.*$||')

if [ $# -eq 0 ]; then
    echo "Provide a URL to Scan"
    exit 1
fi

nmap -n -sS -p 1-65535 -T4 -Pn -A -v -oX ./results/${DATE}.nmap.${DomainName}.xml --script ssl-enum-ciphers ${DomainName} &&
    xsltproc ./results/${DATE}.nmap.${DomainName}.xml -o ./results/${DATE}.nmap.${DomainName}.html && sleep 2 &&
    rm -rf ./results/${DATE}.nmap.${DomainName}.xml
