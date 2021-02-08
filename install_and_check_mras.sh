#!/usr/bin/env bash
set -euo pipefail

UPDATER_URL=${UPDATER_URL:-"https://raw.githubusercontent.com/MiSTer-devel/Updater_script_MiSTer/master/update.sh"}

curl --fail --location "${UPDATER_URL}" > update.sh
chmod +x update.sh

./update.sh
rm update.sh

./mra_checker.py --ignore-roms --mra-folder "delme/_Arcade"

echo
echo "All MRAs are good!"