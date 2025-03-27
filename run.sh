#!/bin/bash

# Define the directory where the old Mesa .deb files are stored
DEB_DIR="lib"

# Check if the directory exists
if [ ! -d "$DEB_DIR" ]; then
    echo "Error: Directory $DEB_DIR not found!"
    exit 1
fi

echo "[+] Installing older Mesa versions files..."
sudo dpkg -i $DEB_DIR/*.deb

echo "[+] Mesa downgrade completed successfully!"
