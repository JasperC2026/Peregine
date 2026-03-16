#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="jas"

echo "[+] Installing Jas Toolbox..."

if [[ $EUID -ne 0 ]]; then
   echo "Run with sudo."
   exit 1
fi

echo "[+] Installing dependencies..."

apt update
apt install -y whois curl dnsutils fastfetch secure-delete chkrootkit openssl jq

echo "[+] Downloading tool..."

curl -L https://raw.githubusercontent.com/DarkShadowUser/Jas-toolbox/main/jas -o $INSTALL_DIR/$SCRIPT_NAME

chmod +x $INSTALL_DIR/$SCRIPT_NAME

echo "[✓] Jas Toolbox installed!"
echo "Run with: jas"
