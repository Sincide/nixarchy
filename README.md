# Nixarchy

Turn a fresh Arch installation into a fully-configured, beautiful, and modern web development system based on Hyprland by running a single command. That's the one-line pitch for Nixarchy (like it was for Omakub). No need to write bespoke configs for every essential tool just to get started or to be up on all the latest command-line tools. Nixarchy is an opinionated take on what Linux can be at its best.

## Installation

Nixarchy installs from `~/nixarchy` and symlinks all configurations from there. This makes it easy to track changes and update your system configuration with git.

### Prerequisites

- A fresh Arch Linux minimal installation
- Git installed
- Internet connection

### Install

1. Clone this repository to `~/nixarchy`:

```bash
cd ~
git clone https://github.com/basecamp/nixarchy.git nixarchy
```

2. Run the installer:

```bash
cd ~/nixarchy
./boot.sh
```

The installer will:
- Install all required packages
- Symlink configurations from `~/nixarchy` to appropriate locations
- Set up themes and branding
- Configure hardware support
- Install a beautiful Hyprland-based desktop environment

### Post-Installation

After installation, your system will reboot into a fully configured environment. All configuration files are symlinked from `~/nixarchy`, so you can:

- Track your configuration changes with git
- Easily update configurations by editing files in `~/nixarchy`
- Share your configuration by committing changes back to your fork

## Features

- **Hyprland**: Modern Wayland compositor with beautiful animations
- **12 Color Themes**: Multiple pre-configured color schemes
- **Development Tools**: Pre-configured development environment with Docker, Ruby, and more
- **Hardware Support**: Battery monitoring, Bluetooth, printers, and more
- **Custom Scripts**: 70+ utility scripts for system management
- **Automatic Updates**: Built-in update system with migration support

## Configuration

All configuration files are symlinked from `~/nixarchy/config/` to `~/.config/`. You can edit them directly in the `~/nixarchy` directory and changes will take effect immediately (or after reloading the relevant service).

## Updating

To update Nixarchy:

```bash
cd ~/nixarchy
git pull
nixarchy-update
```

## License

Nixarchy is released under the [MIT License](https://opensource.org/licenses/MIT).

