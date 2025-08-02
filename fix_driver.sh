#!/bin/bash

echo "[+] Fixing Archer T4U driver..."

cd ~/88x2bu-20210702 || {
    echo "[!] Driver folder not found."
    exit 1
}

sudo ./install-driver.sh
sudo modprobe -r 88x2bu
sudo modprobe 88x2bu

echo "[+] Fix complete. You may need to reboot."
