#!/bin/bash
set -e


BUILD_DIR="$HOME/Projects/practice-gnome-app/build"
DEB_ROOT="$HOME/Projects/deb-build/memerist-amd64"
SPEC_FILE="memerist.spec"
CONTROL_FILE="$DEB_ROOT/DEBIAN/control"


mkdir -p "$DEB_ROOT/DEBIAN"
mkdir -p "$DEB_ROOT/usr/bin"

meson compile -C "$BUILD_DIR"


VERSION=$(grep "^Version:" "$SPEC_FILE" | awk '{print $2}')
RELEASE=$(grep "^Release:" "$SPEC_FILE" | awk '{print $2}' | sed 's/%{?dist}//')


cat << EOF > "$CONTROL_FILE"
Package: memerist
Version: ${VERSION}-${RELEASE}
Section: utils
Priority: optional
Architecture: amd64
Depends: libgtk-4-1, libglib2.0-0, libadwaita-1-0
Maintainer: Vani1-2 <giovannirafanan609@gmail.com>
Description: Meme editor for the GNOME Desktop
EOF


distrobox enter Ubuntu -- bash -c "
  cp $BUILD_DIR/src/memerist $DEB_ROOT/usr/bin/
  dpkg-deb --build $DEB_ROOT
"

distrobox-stop Ubuntu -Y