#!/bin/bash
set -e

# Configuration
APP_NAME="spectre"
VERSION="1.0.0"
ARCH="all"
BUILD_DIR="build_workspace"
DEB_NAME="${APP_NAME}_${VERSION}_${ARCH}.deb"

# Clean previous build
rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR/DEBIAN"
mkdir -p "$BUILD_DIR/usr/bin"
mkdir -p "$BUILD_DIR/usr/lib/$APP_NAME"
mkdir -p "$BUILD_DIR/usr/share/applications"
mkdir -p "$BUILD_DIR/usr/share/doc/$APP_NAME"
mkdir -p "$BUILD_DIR/usr/share/icons/hicolor/512x512/apps"

echo ">>> Setting up build structure..."

# 1. Copy Core Files
cp ../spectre.py "$BUILD_DIR/usr/lib/$APP_NAME/"
cp ../spectre.png "$BUILD_DIR/usr/lib/$APP_NAME/"
chmod +x "$BUILD_DIR/usr/lib/$APP_NAME/spectre.py"

# 2. Create Launcher Script
cat <<EOF > "$BUILD_DIR/usr/bin/$APP_NAME"
#!/bin/bash
exec python3 /usr/lib/$APP_NAME/spectre.py "\$@"
EOF
chmod +x "$BUILD_DIR/usr/bin/$APP_NAME"

# 3. Create Desktop Entry
# We use the existing one but SED the paths
sed 's|Exec=spectre|Exec=/usr/bin/spectre|g' ../spectre.desktop > "$BUILD_DIR/usr/share/applications/$APP_NAME.desktop"
# Update Icon path
sed -i 's|Icon=.*|Icon=/usr/lib/spectre/spectre.png|g' "$BUILD_DIR/usr/share/applications/$APP_NAME.desktop"

# 4. Create Control File
cat <<EOF > "$BUILD_DIR/DEBIAN/control"
Package: $APP_NAME
Version: $VERSION
Section: utils
Priority: optional
Architecture: $ARCH
Depends: python3
Maintainer: itsyashvardhan <itsyashvardhan@users.noreply.github.com>
Description: Advanced System Interface & Dashboard
 A TUI-based dashboard for system monitoring, network scanning,
 and filesystem browsing. Features a minimalist, high-performance
 interface for system operators.
EOF

# 5. Build
echo ">>> Building .deb package..."
mkdir -p ../releases
dpkg-deb --build "$BUILD_DIR" "../releases/$DEB_NAME"

echo ">>> Build Complete: releases/$DEB_NAME"
ls -lh "../releases/$DEB_NAME"
