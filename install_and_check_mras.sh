#!/usr/bin/env bash
set -euo pipefail

echo "Running MiSTer Downloader"
echo

DOWNLOADER_URL=${DOWNLOADER_URL:-"https://raw.githubusercontent.com/MiSTer-devel/Downloader_MiSTer/main/dont_download.sh"}

curl --fail --location "${DOWNLOADER_URL}" > downloader.sh
chmod +x downloader.sh

export DEBUG=true
./downloader.sh
rm downloader.sh

echo
echo "Running MRA Checker"

curl --fail --location -o checker.sh https://raw.githubusercontent.com/MiSTer-devel/Scripts_MiSTer/master/other_authors/mra_rom_check.sh
chmod +x checker.sh
./checker.sh --mra-folder "delme/_Arcade" --recursive --ignore-roms

echo
echo "All MRAs are good!"
