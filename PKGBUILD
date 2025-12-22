pkgname=memerist
_pkgname=memerist
pkgver=v0.1.0.1.r14.g3d439c0
pkgrel=1
pkgdesc="Meme generator with text overlays (Git version)"
arch=('x86_64')
url="https://github.com/Vani1-2/gnome-meme-editor"
license=('GPL3')
depends=('gtk4' 'libadwaita' 'cairo')
makedepends=('meson' 'gcc' 'git')
provides=("$_pkgname")
conflicts=("$_pkgname")
source=("git+${url}.git")
sha256sums=('SKIP')

pkgver() {
    cd "gnome-meme-editor"
    local _specver=$(grep "^Version:" *.spec | awk '{print $2}')
    local _gitrev=$(git rev-list --count HEAD)
    local _githash=$(git rev-parse --short HEAD)
    printf "%s.r%s.g%s" "$_specver" "$_gitrev" "$_githash"
}

build() {
    arch-meson "gnome-meme-editor" build
    meson compile -C build
}

package() {
    meson install -C build --destdir "$pkgdir"
}
