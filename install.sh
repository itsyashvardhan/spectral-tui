#!/bin/bash
# SPECTRAL - System Installation Script (Live Link)
# This script symlinks the codebase to your system bins, allowing you to edit
# the code in /media/yashvs/vault/spectre and see changes immediately.

PREFIX="/usr/local/bin"
APP_DIR="/media/yashvs/vault/spectre"
DESKTOP_DIR="$HOME/.local/share/applications"

# 1. Colors
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

echo -e "${CYAN}⚡ Installing SPECTRAL as a System App...${NC}"

# 2. Make executable
chmod +x "$APP_DIR/spectral.py"

# 3. Create System Symlink (Requires Sudo)
echo -e "Creating symlink in $PREFIX/spectral..."
# We use sudo here for the link creation
if [ -L "$PREFIX/spectral" ]; then
    sudo rm "$PREFIX/spectral"
fi
sudo ln -s "$APP_DIR/spectral.py" "$PREFIX/spectral"

# 4. Install Desktop Entry
echo -e "Installing Desktop shortcut..."
mkdir -p "$DESKTOP_DIR"
cp "$APP_DIR/spectral.desktop" "$DESKTOP_DIR/"

# update-desktop-database might be needed but usually automatic for user dir

echo -e "${GREEN}>>> Success! You can now run 'spectral' from any terminal.${NC}"
echo -e "${GREEN}>>> You can also find 'SPECTRAL' in your Zorin Start Menu.${NC}"
echo -e "${CYAN}>>> Note: Code changes in $APP_DIR will be live immediately.${NC}"
