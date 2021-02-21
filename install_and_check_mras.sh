#!/usr/bin/env bash
set -euo pipefail

echo "Running MiSTer Updater"
echo

UPDATER_URL=${UPDATER_URL:-"https://raw.githubusercontent.com/MiSTer-devel/Updater_script_MiSTer/master/update.sh"}

curl --fail --location "${UPDATER_URL}" > update.sh
chmod +x update.sh

./update.sh
rm update.sh

echo
echo "Running MRA Checker"

wget https://raw.githubusercontent.com/MiSTer-devel/Scripts_MiSTer/master/other_authors/mra_rom_check.sh
chmod +x mra_rom_check.sh
./mra_rom_check.sh --ignore-roms --mra-folder "delme/_Arcade/_alternatives"

echo
echo "All MRAs are good!"
