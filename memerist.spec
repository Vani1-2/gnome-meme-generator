Name:           Memerist
Version:        0.0.25.alpha.7
Release:        1%{?dist}
Summary:        Meme generator with text overlays
License:        GPL-3.0-or-later
URL:            https://github.com/Vani1-2/gnome-meme-generator
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  meson gcc pkgconfig(gtk4) pkgconfig(libadwaita-1) pkgconfig(cairo)
Requires:       gtk4 libadwaita

%description
Create memes with custom text overlays.

%prep
%autosetup

%build
%meson
%meson_build

%install
%meson_install

%files
%{_bindir}/Memerist
%{_datadir}/applications/org.gnome.Memerist.desktop
%{_datadir}/glib-2.0/schemas/org.gnome.Memerist.gschema.xml
%{_datadir}/icons/hicolor/scalable/apps/org.gnome.Memerist.svg
