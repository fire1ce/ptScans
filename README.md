# ptScans

automation for pt scans like nikto, nmap, goBuster, dirb with output files for logging

## Installation

```bash
 ln -s /root/shared/ptScanResults /root/tools/ptScans/results
```

cd to the ptScans directory
Run

```bash
ln -s ${PWD}/scanGobuster.sh /usr/bin/scanGobuster
ln -s ${PWD}/scanNikto.sh /usr/bin/scanNikto
ln -s ${PWD}/scanNmap.sh /usr/bin/scanNmap
ln -s ${PWD}/scanNmapUDP.sh /usr/bin/scanNmapUDP
ln -s ${PWD}/scanDirb.sh /usr/bin/scanDirb
source ~/.zshrc
```
