#!/bin/bash
set -e

distrobox enter ubuntu -- bash -c '
  cp ~/Projects/practice-gnome-app/build/src/memerist ~/Projects/ubuntubox/memerist-0.1.0-1-amd64/usr/bin/
  dpkg-deb --build ~/Projects/ubuntubox/memerist-0.1.0-1-amd64
'
