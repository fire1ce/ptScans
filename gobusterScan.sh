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

gobuster dir -w /usr/share/dirb/wordlists/big.txt -u ${URL} -o ./results/${DATE}.gobuster.${DomainName}.log
