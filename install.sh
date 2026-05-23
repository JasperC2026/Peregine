#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="Peregine"

echo "[+] Installing Peregine..."

if [[ $EUID -ne 0 ]]; then
   echo "Run with sudo."
   exit 1
fi

echo "[+] Downloading tool..."

curl -L https://codeberg.org/JasperC/peregine -o $INSTALL_DIR/$SCRIPT_NAME

chmod +x $INSTALL_DIR/$SCRIPT_NAME

echo "[✓] Peregine installed!"
echo "Run with: peregine"

echo "For more information, visit: https://codeberg.org/JasperC/peregine"
echo "Please note, some dependencies may be required for full functionality. Refer to the documentation for details."


