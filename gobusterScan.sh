#!/usr/bin/env bash
export PATH=/opt/bin:/usr/local/bin:/usr/contrib/bin:/bin:/usr/bin:/usr/sbin:/usr/bin/X11

DATE=`date +%y%m%d`
URL=$1
ShortURL=${URL#*//} #removes stuff upto // from begining

if [ $# -eq 0 ]
then
    echo "Provide a URL to Scan"
    exit 1
fi

gobuster dir -w /usr/share/dirb/wordlists/big.txt -u ${URL} -v -r -o ${DATE}.goBuster.${ShortURL}.log
