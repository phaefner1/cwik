#!/bin/bash

# paths
INSTALL_PATH="/usr/local/bin/cwik"
SCRIPT_PATH="$(pwd)/bin/cwik"

echo "[cwik] Installing..."

chmod +x "$SCRIPT_PATH"

# remove possible old links
if [ -L "$INSTALL_PATH" ] || [ -f "$INSTALL_PATH" ]; then
    echo "[cwik] Removing old link..."
    sudo rm -f "$INSTALL_PATH"
fi

# create new symlink
echo "[cwik] Creating symlink at $INSTALL_PATH"
sudo ln -s "$SCRIPT_PATH" "$INSTALL_PATH"

echo "[cwik] Installed successfully! You can now use 'cwik' anywhere."
