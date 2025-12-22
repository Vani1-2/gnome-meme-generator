#!/bin/bash
set -e


mkdir -p memerist
cd memerist
curl -L -O https://raw.githubusercontent.com/Vani1-2/gnome-meme-editor/main/PKGBUILD
makepkg -si
cd