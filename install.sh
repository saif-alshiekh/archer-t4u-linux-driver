#!/bin/bash

echo "[+] Installing dependencies..."
sudo apt update
sudo apt install -y dkms git build-essential linux-headers-$(uname -r)

echo "[+] Cloning rtl88x2bu driver..."
git clone https://github.com/morrownr/88x2bu-20210702.git || {
    echo "[!] Already cloned or failed."
}

echo "[+] Installing driver..."
cd 88x2bu-20210702
sudo ./install-driver.sh

echo "[+] Done. Please reboot the system."
