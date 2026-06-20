#!/usr/bin/env bash

set -e


echo "[+] Installing Peregine..."

if [[ $EUID -ne 0 ]]; then
   echo "Run with sudo."
   exit 1
fi

echo "[+] Downloading tool..."

git clone https://codeberg.org/JasperC/peregine.git 

chmod +x ~/Peregine/peregine
chmod +x ~/Peregine/peregine_loading.sh

sudo ln -sf ~/Peregine/peregine /usr/local/bin/peregine
sudo ln -sf ~/Peregine/peregine_loading.sh /usr/local/bin/peregine_loading.sh

echo "[✓] Peregine installed!"
echo "Run with: peregine"

echo "For more information, visit: https://codeberg.org/JasperC/peregine"
echo "Please note, some dependencies may be required for full functionality. Refer to the documentation for details."


