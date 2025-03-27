#!/bin/bash

# Define the directory where the old Mesa .deb files are stored
DEB_DIR="./deb"

# Check if the directory exists
if [ ! -d "$DEB_DIR" ]; then
    echo "Error: Directory $DEB_DIR not found!"
    exit 1
fi

echo "[+] Installing older Mesa versions from local .deb files..."
sudo dpkg -i $DEB_DIR/*.deb

echo "[+] Fixing dependencies..."
sudo apt install -f -y

echo "[+] Mesa downgrade completed successfully!"
