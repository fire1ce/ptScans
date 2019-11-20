# ptScans

automation for pt scans like nikto, nmap, goBuster, dirb with output files for logging

## Installation

```bash
 ln -s /root/shared/ptScanResults /root/tools/ptScans/results
```

cd to the ptScans directory
Run

```bash
ln -s ${PWD}/gobusterScan.sh /usr/bin/gobusterScan
ln -s ${PWD}/niktoScan.sh /usr/bin/niktoScan
ln -s ${PWD}/nmapScan.sh /usr/bin/nmapScan
ln -s ${PWD}/nmapScanUDP.sh /usr/bin/nmapScanUDP
ln -s ${PWD}/dirbScan.sh /usr/bin/dirbScan
source ~/.zshrc
```
