# MRA-Checker for MiSTer

This repository contains an updated [mra_checker.py](mra_checker.py) tool, that accepts arguments and provides useful error feedback for CI tasks.

```bash
usage: mra_checker.py [-h] [-m MRA_FOLDER] [-f FILE] [-ir] [-ic] [-im] [-r]

optional arguments:
  -h, --help            show this help message and exit
  -m MRA_FOLDER, --mra-folder MRA_FOLDER
  -f FILE, --file FILE
  -ir, --ignore-roms
  -ic, --ignore-crc
  -im, --ignore-mameversion
  -r, --recursive
```

This repository also runs a CI workflow that checks MRAs from MiSTer-devel arcades.
Check this link to see the latest activity: https://github.com/theypsilon/MRA-Checker_MiSTer/actions/