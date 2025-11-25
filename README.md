# GNOME Meme Generator

<p align="center">
  <img src="https://github.com/user-attachments/assets/12d959d2-25e9-4da1-9d6b-9f5ea1381d15" alt="GNOME Meme Generator Logo" width="128"/>
</p>

<p align="center">
  <strong>Memes go BRRRRRRRRRRRRR</strong>
</p>

<p align="center">
  A modern meme generator built with GTK 4 and Libadwaita for the GNOME desktop.
</p>

---

## ✨ Features

- **Image Import** - Load any image to use as your meme template
- **Classic Meme Text** - Add customizable top and bottom text
- **PNG Export** - Save your creations in high quality
- **Native GNOME Design** - Built with Libadwaita
- **Let it Happen**

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/691d54c8-c16e-4741-995a-4244e0cf34c2" alt="Main interface" width="800"/>
  <br/>
  <em>Clean and intuitive meme creation interface</em>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/97e6a40d-1434-4f1b-b672-703a0a6941bb" alt="Meme example 1" width="800"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/350843ca-83be-4de2-88e4-73e324774602" alt="Meme example 2" width="800"/>
</p>

## Installation

### Pre-built Packages

Download the latest `.rpm` package for x86_64 from the [Releases](https://github.com/Vani1-2/gnome-meme-generator/releases) section.

```bash
sudo rpm -i Memerisst-*.rpm
```
or
```bash
sudo dnf install ./Memerist-*.rpm
```

### Building from Source

#### Prerequisites

Install the required development packages:

**Fedora/RHEL:**
```bash
sudo dnf install gtk4-devel libadwaita-devel meson ninja-build
```

**Ubuntu/Debian:**
```bash
sudo apt install libgtk-4-dev libadwaita-1-dev meson ninja-build
```

**Arch Linux:**
```bash
sudo pacman -S gtk4 libadwaita meson ninja
```

#### Build Instructions

```bash
# Clone the repository
git clone https://github.com/Vani1-2/gnome-meme-generator.git
cd gnome-meme-generator

# Configure the build
meson setup build

# Compile
meson compile -C build

# Install (optional)
sudo meson install -C build
```

#### Running Without Installing

```bash
./build/src/gnome-meme-generator
```

##  Usage

1. Launch GNOME Meme Generator from your application menu
2. Click the import button to select an image
3. Enter your top and bottom text
4. Adjust text styling as desired
5. Export your meme as PNG
6. Let it Happen

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This project is open source. Please check the LICENSE file for details.

## Acknowledgments

Built with GTK 4 and Libadwaita for the GNOME desktop environment.

---

<p align="center">
  Made with ❤️ for meme enthusiasts everywhere
</p>
