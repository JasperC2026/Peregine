#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="jas"

echo "[+] Installing Jas Toolbox..."

if [[ $EUID -ne 0 ]]; then
   echo "Run with sudo."
   exit 1
fi

echo "[+] Downloading tool..."

curl -L https://codeberg.org/JasperC/peregine -o $INSTALL_DIR/$SCRIPT_NAME

chmod +x $INSTALL_DIR/$SCRIPT_NAME

echo "[✓] Jas Toolbox installed!"
echo "Run with: jas"


